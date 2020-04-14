<div class='column-header' id='live'>
    <h2>LIVE</h2>
    <h3>直播地址</h3>
</div>
<div class='live column-container'>
    <div class='live__list'>
        {% for live in post.live %}
        <a href={{ live.url || 'javascript:;' }} {% if live.url  %}target='_blank'{% endif %} class='live__item'>
            <img class='live__image' src={{ live.image }} />
            {% if live.qrcode %}
            <img class='live__qr' src={{ live.qrcode }} />
            {% endif %}
        </a>
        {% endfor %}
    </div>
</div>