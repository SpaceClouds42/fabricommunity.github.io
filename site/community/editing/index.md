---
title: Editing the Site
---

# Editing the Site

{% embed "inline/button" %}
    {% block url %}https://google.com{% endblock %}
    {% block text %}
        {% embed "inline/icon" %}
            {% block icon %}far fa-globe{% endblock %}
            {% block text %}Google{% endblock %}
        {% endembed %}
    {% endblock %}
{% endembed %}
