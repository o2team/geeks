<section class="" id="home">
    <div class="head list-head">
        <span class="logo"></span>
    </div>
    <div class="main-wrap">
        <div class="evt" id="evt">
            <div id="evtList" class="evt-list">
                {% for post in page.posts %}
                {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
                {% include '../post/mini.swig' with {post:post, author:author} %}
                {% endfor%}
            </div>
        </div>
    </div>
    <div class="foot">
        <p>Copyright © 2017. All Rights Reserved.</p>
        <p>粤ICP备15077732号-2</p>
    </div>
</section>
