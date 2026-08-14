---
layout: page
title: Atelier+
permalink: /atelier-ia/abonnement/
description: Abonnement alumni Atelier IA — mentorat live, communauté, playbooks. Pas de builder SaaS avant la demande.
nav: false
toc:
  sidebar: left
---

{% assign a = site.data.atelier_ia %}
{% assign s = a.subscription %}

> {{ a.disclaimer_short }}

# Atelier+

{{ s.thesis }}

La cohorte installe un workflow. Atelier+ empêche qu'il pourrisse, et que le deuxième ne parte jamais.

## Qui

Alumni de la cohorte seulement. {{ s.convert_when }} Cible: {{ s.target_conversion }}.

## Prix

- **{{ a.pricing.abonnement_user.label }}** — {{ a.pricing.abonnement_user.price }}&nbsp;$ / {{ a.pricing.abonnement_user.period }} — {{ a.pricing.abonnement_user.note }}
- **{{ a.pricing.abonnement_org.label }}** — {{ a.pricing.abonnement_org.price }}&nbsp;$ / {{ a.pricing.abonnement_org.period }} — {{ a.pricing.abonnement_org.note }}
- **{{ a.pricing.sprint.label }}** — {{ a.pricing.sprint.price }}&nbsp;$ — {{ a.pricing.sprint.note }}

## Dans la boîte

- Mentorat live hebdomadaire et office hours
- Playbooks au fur et à mesure (un vrai par mois, pas une pluie de templates)
- Canaux:
  {% for ch in s.channels %}
  - {{ ch }}
    {% endfor %}

## Ops (pour que ça tienne)

{% for item in s.weekly_ops %}

- {{ item }}
  {% endfor %}

## Ce qu'on ne construit pas

{{ s.defer_builder }} Le sprint done-with-you est un projet facturé, pas une app.

[Cohorte]({{ '/atelier-ia/cohorte/' | relative_url }}) · [Retour]({{ '/atelier-ia/' | relative_url }})
