<div class='column-header' id='award'>
    <h2>AWARD</h2>
    <h3>精美礼品</h3>
</div>
<div class='award column-container'>
    <div class='award__list'>
        {% for award in post.award %}
        <div class='award__item'>
            <img class='award__image' src={{ award.image }} />
            <p class='award__content'>
                <span class='award__type'># {{ award.type }} #</span>
                <span class='award__name'>{{ award.name }}</span>
            </p>
        </div>
        {% endfor %}
    </div>
</div>