<!DOCTYPE html>
<html class="ovf-hidden theme-{{config.theme}}">
<head>
    <meta charset="utf-8"/>
    <title>{% block title %}{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}「{{ config.subtitle }}」{% endblock %}</title>
    {{partial('_partial/common/head')}}
</head>
<style>
html.ovf-hidden,
html.ovf-hidden body {
    overflow: auto;
}
.wrapper {
    background: #000;
}
</style>
<body class="{% block page_class %}{% endblock %}">
    {% block prebody %}{% endblock %}
    <div class="wrapper">
        <img src="http://storage.jd.com/index/geeks.jpg" style="width: 100%;" />
    </div>

</body>
</html>
