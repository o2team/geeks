<div class='column-header' id='review'>
    <h2>REVIEW</h2>
    <h3>往期回顾</h3>
</div>
<div class='swiper column-container'>
    <div class="swiper-container">
    <div class="swiper-wrapper">
        {% for post in page.posts %}
        <div class="swiper-slide">
        <a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">
            <img class='swiper-cover' src="{{ post.cover }}" alt="{{ post.title }}"></img>
        </a>
        </div>
        {% endfor %}
    </div>
    </div>
    <div class="swiper-pagination"></div>
</div>