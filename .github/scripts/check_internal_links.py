"""Check that local links in generated HTML resolve inside the built site."""

from __future__ import annotations

import html
import os
import sys
from html.parser import HTMLParser
from pathlib import Path, PurePosixPath
from urllib.parse import unquote, urlsplit


LINK_ATTRIBUTES = {"a": "href", "img": "src", "link": "href", "script": "src"}
IGNORED_SCHEMES = {"data", "javascript", "mailto", "tel"}
SITE_HOSTS = {
    host.strip().lower()
    for host in os.environ.get("SITE_HOSTS", "jinlx.github.io").split(",")
    if host.strip()
}


class LinkParser(HTMLParser):
    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.links: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        attribute = LINK_ATTRIBUTES.get(tag)
        if attribute is None:
            return
        value = dict(attrs).get(attribute)
        if value:
            self.links.append(value)


def possible_targets(site_root: Path, source: Path, raw_link: str) -> list[Path]:
    parsed = urlsplit(html.unescape(raw_link.strip()))
    if parsed.scheme.lower() in IGNORED_SCHEMES:
        return []
    if parsed.netloc and parsed.netloc.lower() not in SITE_HOSTS:
        return []
    if parsed.scheme and not parsed.netloc:
        return []

    path_text = unquote(parsed.path)
    if not path_text:
        return []

    if path_text.startswith("/"):
        relative = PurePosixPath(path_text.lstrip("/"))
    else:
        source_directory = PurePosixPath(source.relative_to(site_root).parent.as_posix())
        relative = source_directory / PurePosixPath(path_text)

    target = site_root.joinpath(*relative.parts)
    candidates = [target]
    if path_text.endswith("/") or not target.suffix:
        candidates.append(target / "index.html")
        candidates.append(target.with_suffix(".html"))
    return candidates


def main() -> int:
    site_root = Path(sys.argv[1] if len(sys.argv) > 1 else "_site").resolve()
    if not site_root.is_dir():
        print(f"Built site directory not found: {site_root}", file=sys.stderr)
        return 2

    broken: list[tuple[Path, str]] = []
    for source in site_root.rglob("*.html"):
        parser = LinkParser()
        parser.feed(source.read_text(encoding="utf-8", errors="replace"))
        for raw_link in parser.links:
            candidates = possible_targets(site_root, source, raw_link)
            if candidates and not any(candidate.exists() for candidate in candidates):
                broken.append((source.relative_to(site_root), raw_link))

    if broken:
        print("Broken internal links:", file=sys.stderr)
        for source, link in broken:
            print(f"- {source}: {link}", file=sys.stderr)
        return 1

    print("All generated internal links resolve.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
