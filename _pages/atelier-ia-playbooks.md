---
layout: page
title: playbooks Atelier IA
permalink: /atelier-ia/playbooks/
description: Douze playbooks d'IA remixables pour PME québécoises, avec checklist Loi 25.
nav: false
toc:
  sidebar: left
---

{% assign a = site.data.atelier_ia %}

> {{ a.disclaimer_short }}

# 12 playbooks, pas 150

Chaque fiche est un remix, pas un logiciel. Stack québécoise d'abord (Microsoft 365, Google, CRM/ERP déjà payés). Une démo, un gabarit (n8n / Make / Power Automate), une checklist Loi 25, un cas local quand il existe.

On n'ouvre pas le catalogue à 150 items avant d'avoir dix organisations payantes. Les douze ci-dessous viennent de douleurs que je vois déjà côté PME — pas d'un scrape de WhatsApp brésilien.

{% for p in a.playbooks %}

## {{ p.title }}

_{{ p.sector }}_

**Problème.** {{ p.problem }}

**En deux semaines.** {{ p.result_in_two_weeks }}

**Stack.** {{ p.stack | join: " · " }}

**Données touchées.** {{ p.data_touched }}

**Loi 25.**
{% for rule in p.loi25 %}

- {{ rule }}
  {% endfor %}

**Hors-périmètre.** {{ p.out_of_scope }}

**Succès.** {{ p.success }}
{% endfor %}

Santé: le playbook ops clinique **refuse** le diagnostic, le triage médical et le dosage. Si un fil patient dérive vers le clinique, l'humain reprend. Voir le [cadre]({{ '/atelier-ia/cadre/' | relative_url }}).

[La cohorte]({{ '/atelier-ia/cohorte/' | relative_url }}) · [Retour]({{ '/atelier-ia/' | relative_url }})
