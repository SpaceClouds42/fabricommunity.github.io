---
title: Markup Testing
---

# Markup Testing Document

This document exists as a simple testbed for this site's markup and templating logic. Feel free to edit this file and
mess with it locally.

---

{% import "inline/macros" %}

{% message "info" %}
  {% message_header %}Info admonition title!{% end_message_header %}
  
  {% message_body %}
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
* This is a Markdown list placed within a message.
  {% end_message_body %}
{% endmessage %}

{{ button(url="https://google.com", text="Google", classes="is-warning", icon_name="far fa-globe", icon_classes="has-text-danger") }}
{{ button(url="https://google.com", text="Google", classes="is-warning", icon_name="far fa-globe", icon_classes="has-text-danger") }}

{{ button("https://google.com", "Simpler Button") }}
