---
layout: page
title: cohorte Atelier IA
permalink: /atelier-ia/cohorte/
description: Cohorte de 8 semaines — IA pour dirigeants de PME, du cas d'usage à l'agent en production.
nav: false
toc:
  sidebar: left
---

{% assign a = site.data.atelier_ia %}
{% assign c = a.cohort %}

> {{ a.disclaimer_short }}

# {{ c.title }}

[{{ a.name }}]({{ '/atelier-ia/' | relative_url }}) · {{ c.duration_weeks }} semaines · {{ c.language }}

{{ c.format }}. Plateforme: {{ c.platform }}. Places: {{ c.seats }}.

## Public

{{ c.audience }}

Pas pour:

{% for item in c.not_for %}

- {{ item }}
  {% endfor %}

## Ce que vous sortez

{% for item in c.outcomes %}

- {{ item }}
  {% endfor %}

## Semaines

{% for w in c.weeks %}

### Semaine {{ w.week }} — {{ w.title }}

- **Live:** {{ w.live }}
- **Terrain:** {{ w.homework }}
- **Livrable:** {{ w.deliverable }}
  {% endfor %}

## Prix

- **1 siège:** {{ a.pricing.cohorte_siege.beta_price }}&nbsp;$ CAD (cohorte 1) puis {{ a.pricing.cohorte_siege.price }}&nbsp;$
- **Entreprise, 2 sièges:** {{ a.pricing.cohorte_entreprise.beta_price }}&nbsp;$ CAD (cohorte 1) puis {{ a.pricing.cohorte_entreprise.price }}&nbsp;$

Le format à deux sièges (dirigeant + relais) est celui qui survit au vendredi. Facture utilisable dans un dossier de formation (Productivité-Compétences et équivalents) — je fournis titre, heures, et objectifs; je ne garantis pas l'admissibilité.

## Après

Les alumni peuvent passer sur [Atelier+]({{ '/atelier-ia/abonnement/' | relative_url }}). Objectif interne: {{ a.subscription.target_conversion }} des entreprises de la cohorte. Pas de SaaS « builder » avant que les playbooks soient vraiment remixés.

[Liste d'attente](mailto:{{ a.email }}?subject=Atelier%20IA%20%E2%80%94%20liste%20d%27attente) · [Retour]({{ '/atelier-ia/' | relative_url }})
