---
layout: page
title: cadre Atelier IA
permalink: /atelier-ia/cadre/
description: Cadre d'indépendance Atelier IA — Mila, PARI, données, santé.
nav: false
toc:
  sidebar: left
---

{% assign a = site.data.atelier_ia %}

> {{ a.disclaimer_short }}

# {{ a.firewall.title }}

{{ a.disclaimer_affiliation }}

Avant toute offre payante, ces règles sont non négociables:

{% for rule in a.firewall.rules %}

- {{ rule }}
  {% endfor %}

## Ce que ça veut dire en pratique

Je peux enseigner des méthodes générales d'IA, des playbooks, et de la gouvernance. Je ne peux pas recycler un livrable PARI, un dépôt Mila, ou l'histoire identifiable d'une PME conseillée dans le cadre institutionnel — sauf si cette PME le demande **elle-même**, par écrit, en dehors du mandat public.

Le site académique et Atelier IA partagent un nom (le mien). Ils ne partagent pas la facturation, les fichiers, ni la promesse.

Questions: [{{ a.email }}](mailto:{{ a.email }}?subject=Atelier%20IA%20%E2%80%94%20cadre).

[Retour]({{ '/atelier-ia/' | relative_url }})
