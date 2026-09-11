---
layout: single
title: "Curriculum Vitae"
permalink: /cv/
author_profile: true
classes: cv-page
excerpt: "Academic CV of Lixu Jin, a Postdoctoral Scholar at Rutgers University studying wildfire smoke, air quality, and health-relevant pollutant exposure."
last_modified_at: "2026-09-02"
---

{% assign cv = site.data.cv %}

<p class="page__updated">Updated {{ cv.updated_display }}</p>

[Download the full CV (PDF)]({{ cv.pdf_url }}){: .btn .btn--primary }

## Current position

**{{ cv.current_position.title }}**, {{ cv.current_position.institution }}, {{ cv.current_position.years }}{% if cv.current_position.note %} *({{ cv.current_position.note }})*{% endif %}

{{ cv.current_position.focus }}

## Education

{% for item in cv.education %}
- {{ item.degree }}, {{ item.institution }}, {{ item.year }}{% if item.note %} *({{ item.note }})*{% endif %}
{% endfor %}

## Skills

{% for item in cv.skills %}
- {{ item.category }}: {{ item.items | replace: "|", "&#124;" }}
{% endfor %}

For my complete academic record, see the [full CV (PDF)]({{ cv.pdf_url }}).

ORCID: [{{ cv.contact.orcid }}](https://orcid.org/{{ cv.contact.orcid }}).
