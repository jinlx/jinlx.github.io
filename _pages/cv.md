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

[Download the current CV (PDF)]({{ cv.pdf_url }}){: .btn .btn--primary }

## Current position

**{{ cv.current_position.title }}**, {{ cv.current_position.institution }}, {{ cv.current_position.years }}{% if cv.current_position.note %} *({{ cv.current_position.note }})*{% endif %}

- **Research focus:** {{ cv.current_position.focus }}

## Education

{% for item in cv.education %}
- {{ item.degree }}, {{ item.institution }}, {{ item.year }}{% if item.note %} *({{ item.note }})*{% endif %}
{% endfor %}

## Research interests

{% for item in cv.research_interests %}
- {{ item }}
{% endfor %}

## Research expertise

{% for item in cv.research_expertise %}
- {{ item }}
{% endfor %}

## Research experience

{% for item in cv.research_experience %}
### {{ item.institution }}, {{ item.location }}

**{{ item.role }}**, {{ item.years }}{% if item.note %} *({{ item.note }})*{% endif %}

{% for contribution in item.contributions %}
- {{ contribution }}
{% endfor %}
{% endfor %}

## Teaching experience

{% for item in cv.teaching_experience %}
- {{ item }}
{% endfor %}

## Publications

### In preparation

{% for item in cv.publications.in_preparation %}
- {{ item.citation }}
{% endfor %}

### Peer-reviewed

#### First-author

{% for item in cv.publications.first_author %}
- {{ item.citation }}{% if item.doi %} [DOI]({{ item.doi }}){% endif %}{% if item.note %} ({{ item.note }}){% endif %}{% if item.media %} (Featured by {% for outlet in item.media %}[{{ outlet.label }}]({{ outlet.url }}){% unless forloop.last %} and {% endunless %}{% endfor %}){% endif %}
{% endfor %}

#### Co-author

{% for item in cv.publications.co_author %}
- {{ item.citation }}{% if item.doi %} [DOI]({{ item.doi }}){% endif %}{% if item.note %} ({{ item.note }}){% endif %}
{% endfor %}

## Presentations

### Invited talks

{% for item in cv.presentations.invited_talks %}
- {{ item }}
{% endfor %}

### Conferences

{% for item in cv.presentations.conferences %}
- {{ item }}
{% endfor %}

## Honors and awards

{% for item in cv.awards %}
- {{ item.name }}{% if item.amount %} ({{ item.amount }}){% endif %}, {{ item.institution }}, {{ item.years }}
{% endfor %}

## Grants and funding

{% for item in cv.grants %}
- **{{ item.role }}:** {{ item.title }}. {{ item.program }} ({{ item.amount }}), {{ item.institution }}, {{ item.years }}, with {{ item.collaborator }}.
{% endfor %}

## Professional activity and outreach

{% for item in cv.professional_activity %}
- **{{ item.label }}:** {{ item.details }}
{% endfor %}

## Skills

{% for item in cv.skills %}
- **{{ item.category }}:** {{ item.items }}
{% endfor %}

My persistent researcher identifier is [ORCID {{ cv.contact.orcid }}](https://orcid.org/{{ cv.contact.orcid }}).
