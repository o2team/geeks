{% extends '_layout.swig' %}

{% block page_class %}page-full page-index{% endblock %}

{% block main %}
  {% include '_partial/index/head.swig' %}
   {% include '_partial/index/banner.swig' %}
   {% include '_partial/index/main.swig' %}
   {% include '_partial/index/footer.swig' %}

{% endblock %}

{% block footer %}
    {% parent %}
{% endblock %}

{% block pagejs %}
{{ js('js/index') }}
{% endblock%}
