---
layout: page
title: partenaires Atelier IA
permalink: /atelier-ia/partenaires/
description: Partenaires de distribution Atelier IA — chambres, PME MTL, ordres, lunch&learns.
nav: false
toc:
  sidebar: left
---

{% assign a = site.data.atelier_ia %}

> {{ a.disclaimer_short }}

# On ne concurrence pas les institutions

CRIM, IVADO, Mila formation continue, TechnoCompétences font déjà le premier projet et la formation formelle. Atelier IA est la couche privée **entre** le webinaire gratuit et le mandat R&D: toujours allumée, en français, avec des playbooks qui survivent à la fin de la subvention.

Les chambres et les ordres distribuent. Je n'achète pas d'ads tant que le bouche-à-oreille ne marche pas.

## Dix portes

{% for p in a.partners %}

### {{ p.name }}

{{ p.why }}

- **Demande:** {{ p.ask }}
- **Talk:** {{ p.first_talk }}
  {% endfor %}

## Trois lunchs à booker en premier

{% for l in a.lunch_learns %}
{{ forloop.index }}. **{{ l.partner }}** — {{ l.title }} ({{ l.duration }}). Succès: {{ l.outcome }}
{% endfor %}

Format unique: 45 minutes, un processus réel, zéro slide « l'IA va tout changer ». Un diagnostic offert aux participantes.

## Calendrier LinkedIn (6 semaines, organique)

{% for post in a.linkedin_cadence %}

- **S{{ post.week }} — {{ post.title }}.** {{ post.hook }} _{{ post.cta }}_
  {% endfor %}

Le premier texte long est aussi [sur le blog]({{ '/blog/2026/memoire-entreprise-vs-chatgpt-amnesique/' | relative_url }}).

[Liste d'attente](mailto:{{ a.email }}?subject=Atelier%20IA%20%E2%80%94%20partenariat) · [Retour]({{ '/atelier-ia/' | relative_url }})
