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
                <p class="evt-subtitle">by <a href="//aotu.io">&aopf;&oopf;&topf;&uopf;.&iopf;&oopf;</a>, for building the web.</p>
            </div>
            <div id="evtList" class="evt-list ani">
                {% for post in page.posts %}
                {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
                {% include '../post/mini.swig' with {post:post, author:author} %}
                <a class="btn btn-greyline evt-btn" href="{{ url_for(post.path) }}" title="{{post.title}}">了解详情&nbsp;&rarrb;</a>
                {% endfor%}
            </div>
        </div>
    </div>

</section>