---
category: source-note{%- if DOI %}
DOI: {{DOI}}{%- endif %}{%- if ISBN %}
ISBN: {{ISBN}}{%- endif %}
title: {{title}}
authors: {{authors}}
year: {{date | format("YYYY")}}{%- if place %}
location: {{place}}{%- endif %}{%- if itemType %}
itemType: {{itemType}}{%- endif %}{%- if publisher %}
publisher: {{publisher}} {%- endif %}
tags: {% if allTags %}{{allTags}}{% endif %}
citekey: {{citekey}}
annotation-target: {%- for a in attachments %}
{%- if a.path|length %}{%- if a.path.endsWith('.pdf') %} file://{{a.path | replace(" ", "%20")}}{% endif %}
{%- elif a.url|length %}{%- if a.url.endsWith('.pdf') %} {{a.url | replace(" ", "%20")}}{% endif %}
{% endif %}{%- endfor -%}{{ nl2br }}
status: unread
dateread:
---
# {{title}}

> [!quote] Bibliography
> {{bibliography}}

> [!info]
> **Related**: {% for relation in relations | selectattr("citekey") %} [[@{{relation.citekey}}]]{% if not loop.last %}, {% endif%} {% endfor %}

> [!tldr] Summary
> {%- if abstractNote %}
> {{abstractNote}}
> {%- endif -%}.

> [!quote] Quotable
> .

## Notes
{% persist "notes" %}

{%- if markdownNotes %}
{{markdownNotes}}
{%- endif -%}.

{% endpersist %}


## Annotations
{% persist "annotations" %}
{% set newAnnotations = annotations | filterby("date", "dateafter", lastImportDate) %}

{% if newAnnotations.length > 0 %}
{% for a in newAnnotations %}
> {{a.annotatedText}}
{% endfor %}

{% endif %}
{% endpersist %}
