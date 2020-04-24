---
title: "planet.linuxaudio.org"
---
{% assign current_year = site.time | date: "%Y" %}
{% for post in site.posts %}
    {% assign post_year = post.date | date: "%Y" %}
    {% if current_year != post_year %}{% continue %}{% endif %}

<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
<h6>by <i>{{ post.author }}</i>,&nbsp;at
<time datetime="{{ post.date | datetime | date_to_xmlschema }}"
{% if updated %}data-updated="true"{% endif %}>
{{ post.created_at | date: post.date_fmt }}</time>
</h6>
{{ post.content | replace: "    ", '' }}
{% endfor %}

[ <a href="/news/archive/">News Archive</a> ]
