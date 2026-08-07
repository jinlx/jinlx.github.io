# Lixu Jin's professional website

This repository contains the source for [jinlx.github.io](https://jinlx.github.io/), the professional website of Lixu Jin, a Postdoctoral Scholar at Rutgers University.

The site presents research on wildfire-smoke emissions and chemistry, atmospheric modeling, satellite and in situ observation integration, air quality, exposure, and public health. It also hosts a current CV, selected publications, and talks and posters.

## Content structure

- `_config.yml`: site identity, author profile, social links, and global settings
- `_data/navigation.yml`: main navigation
- `_pages/about.md`: homepage and research introduction
- `_pages/research.md`: detailed research overview
- `_pages/publications.md`: selected publications
- `_pages/presentations.md`: talks and posters
- `_pages/cv.md`: web CV and PDF download
- `_pages/contact.md`: professional contact information
- `files/CV_Lixu.pdf`: current public CV

## Local preview

This site uses Jekyll and the Academic Pages/Minimal Mistakes template lineage. After installing the Ruby dependencies, run:

```bash
bundle exec jekyll serve
```

Then open `http://localhost:4000`.

## Keeping the CV in sync

The PDF at `files/CV_Lixu.pdf` is a copy of the authoritative CV maintained at `Dropbox/jinlx/Personal_materials/Application_materials/CV_resume/CV_Lixu.pdf`. After updating that file, refresh the site copy with:

```powershell
.\scripts\sync-cv.ps1
```

Then commit and push the updated PDF as usual. The script fails loudly if the source is missing or the copy does not match.

## Automated checks

Pull requests and pushes to `master` automatically build the Jekyll site and verify that generated internal links resolve. The workflow is defined in `.github/workflows/site-check.yml`.

## Profile identifiers

- ORCID: [0000-0003-1346-5352](https://orcid.org/0000-0003-1346-5352)
- GitHub: [jinlx](https://github.com/jinlx)
- Email: [lixu.jin@rutgers.edu](mailto:lixu.jin@rutgers.edu)
