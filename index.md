---
title: "planet.linuxaudio.org"
---
{% assign current_year = site.time | date: "%Y" %}
{% for post in site.posts %}
    {% assign post_year = post.date | date: "%Y" %}
    {% if current_year != post_year %}{% continue %}{% endif %}
    {% if post.avatar %}
        {% assign avatar = "/assets/avatars/" | append: post.avatar | relative_url %}
    {% else %}
        {% assign avatar = "/assets/avatars/default.png" | relative_url %}
    {% endif %}
    {% if post.original_link %}
        {% assign post_author = "<a href='" | append: post.original_link
            | append: "'>" | append: post.author | append: "</a>" %}
    {% else %}
        {% assign post_author = post.author %}
    {% endif %}
<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
<img class="face" src="{{ avatar }}"/>
<h6>by <i>{{ post_author }}</i>,&nbsp;at
<time datetime="{{ post.date | datetime | date_to_xmlschema }}"
{% if updated %}data-updated="true"{% endif %}>
{{ post.created_at | date: post.date_fmt }}</time>
</h6>
{{ post.content | replace: "    ", '' }}
{% endfor %}

[ <a href="/news/archive/">News Archive</a> ]
