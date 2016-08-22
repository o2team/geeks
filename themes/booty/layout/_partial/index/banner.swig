<section class="home fullscreen" id="home">
    <div class="background"></div>
    <div class="home-hd"></div>
    <div class="home-bd">
        <div class="brand">
            <div class="brand-logo" id="brandLogo">
                <img src="img/logo.png" alt="{{config.fulltitle}}">
            </div>
        </div>

        <div class="evt" id="evt">
            <div class="evt-header">
                <h1 class="evt-title">{{config.fulltitle}}</h1>
                <blockquote class="blockquote-em">{{config.slogan}}</blockquote>
                <p class="evt-subtitle">{{config.subtitle_desc}}</p>
            </div>
            <div id="evtList" class="evt-list">
                {% for post in page.posts %}
                {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
                {% include '../post/mini.swig' with {post:post, author:author} %}
                {% endfor%}
            </div>
        </div>
    </div>

</section>