<section class="home fullscreen" id="home">
    <div class="background"></div>
    <div class="home-hd"></div>
    <div class="home-bd">
        <div class="brand">
            <div class="ani brand-logo" id="brandLogo">
                <img src="img/logo.png" alt="凹凸有致Web开发技术交流分享会">
            </div>
        </div>

        <div class="evt" id="evt">
            <div class="evt-header ani">
                <h1 class="evt-title">『凹凸有致』- Open Oriented</h1>
                <p class="evt-subtitle">by <a href="//aotu.io">AOTU.IO</a>, for building the web.</p>
            </div>
            <div id="evtList" class="evt-list ani">
                {% for post in page.posts %}
                {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
                {% include '../post/mini.swig' with {post:post, author:author} %}
                {% endfor%}
            </div>
        </div>
    </div>

</section>