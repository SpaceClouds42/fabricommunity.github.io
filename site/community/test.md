---
title: Markup Testing
---

# Markup Testing Document

This document exists as a simple testbed for this site's markup and templating logic. Feel free to edit this file and
mess with it locally.

---

{% embed "./blocks/info.html.peb" %}
  {% block title %}Info admonition title!{% endblock %}
  
  {% block body %}
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
  {% endblock %}
{% endembed %}
