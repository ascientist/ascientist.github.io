---
layout: page
title: atelier ia
permalink: /atelier-ia/
description: Formation pratique d'IA pour dirigeants de PME québécoises — cohorte, mentorat, playbooks. Indépendant de Mila.
nav: true
nav_order: 5
toc:
  sidebar: left
---

{% assign a = site.data.atelier_ia %}

> {{ a.disclaimer_short }}

# {{ a.name }}

**{{ a.tagline }}**

{{ a.one_liner }} Je construis ça à côté de mon travail de chercheur — le même métier d'explication que je fais déjà avec des PME, mis en produit pour ceux qui n'auront jamais un créneau PARI.

## Ce que c'est

Pas un cours universitaire. Pas une « révolution ChatGPT ». Une cohorte de huit semaines où une PME sort **un workflow en production**, puis une communauté qui continue le jeudi suivant.

Quatre couches, dans l'ordre. On ne saute pas à la quatrième.

1. **Formation** — une cohorte, pas trente-trois cours.
2. **Mentorat + communauté** — lives, pas un forum mort.
3. **Playbooks remixables** — douze d'abord, pas cent cinquante.
4. **Sprint done-with-you** — seulement si les trois premières tiennent.

Le modèle brésilien que ça transpose (éducation + communauté + solutions prêtes) est adapté ici au français du Québec, à la Loi 25, et à la stack que les PME ont déjà (Microsoft 365, Google, un CRM, parfois un ERP).

## Pour qui

Dirigeante ou dirigeant de PME, DG, ops — avec un relais sur le terrain si vous n'êtes plus dans la file d'attente vous-même. Vous n'avez pas à devenir data scientist.

**Pas pour vous** si vous voulez un modèle entraîné sur vos données, une certification, ou « explorer l'IA » sans processus à changer dans les huit semaines. Ça, les programmes publics le font déjà (Mila × PARI, CRIM, IVADO). On ne les copie pas; on habite le trou qu'ils laissent quand la cohorte institutionnelle se termine.

## Offre

| Offre                                    | Prix                                                                                                          |                                             |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------- |
| {{ a.pricing.diagnostic.label }}         | Gratuit                                                                                                       | {{ a.pricing.diagnostic.note }}             |
| {{ a.pricing.cohorte_siege.label }}      | {{ a.pricing.cohorte_siege.beta_price }}&nbsp;$ (beta) / {{ a.pricing.cohorte_siege.price }}&nbsp;$           | {{ a.pricing.cohorte_siege.note }}          |
| {{ a.pricing.cohorte_entreprise.label }} | {{ a.pricing.cohorte_entreprise.beta_price }}&nbsp;$ (beta) / {{ a.pricing.cohorte_entreprise.price }}&nbsp;$ | {{ a.pricing.cohorte_entreprise.note }}     |
| {{ a.pricing.abonnement_org.label }}     | {{ a.pricing.abonnement_org.price }}&nbsp;$/{{ a.pricing.abonnement_org.period }}                             | Alumni. {{ a.pricing.abonnement_org.note }} |
| {{ a.pricing.sprint.label }}             | {{ a.pricing.sprint.price }}&nbsp;$                                                                           | {{ a.pricing.sprint.note }}                 |

Prix en {{ a.pricing.currency }}, taxes en sus. La cohorte 1 est en tarif beta contre le droit d'anonymiser un cas.

## Pages

- [La cohorte]({{ '/atelier-ia/cohorte/' | relative_url }}) — huit semaines, livrables, public.
- [Les 12 playbooks]({{ '/atelier-ia/playbooks/' | relative_url }}) — remixables, avec checklist Loi 25.
- [Atelier+]({{ '/atelier-ia/abonnement/' | relative_url }}) — l'abonnement après la cohorte.
- [Partenaires]({{ '/atelier-ia/partenaires/' | relative_url }}) — chambres, ordres, lunch&learns.
- [Cadre d'indépendance]({{ '/atelier-ia/cadre/' | relative_url }}) — Mila, PARI, ce qu'on ne fait pas.

## Diagnostic et liste d'attente

Écrivez-moi. Objet clair, deux phrases sur l'entreprise, un processus qui fait mal.

- [Diagnostic 30 min](mailto:{{ a.email }}?subject=Atelier%20IA%20%E2%80%94%20diagnostic%2030%20min)
- [Liste d'attente cohorte 1](mailto:{{ a.email }}?subject=Atelier%20IA%20%E2%80%94%20liste%20d%27attente)

{{ a.location }}. Réponse en français.
