<header class="head head-index">
    <div class="container">
        <a class="logo" href="{{url_for('/')}}"><span class="logo-pic"></span></a>
        <div class="head-links">
            <a href="#topic">大咖开讲</a>
            {% if post.discuss %}
            <a href="#round-table">圆桌讨论</a>
            {% endif %}
            {% if post.award %}
            <a href="#award">精美礼品</a>
            {% endif %}
            {% if post.live %}
            <a href="#live">直播地址</a>
            {% endif %}
            {% if post.address %}
            <a href="#address">会议地址</a>
            {% endif %}
            <a href="../">往期回顾</a>
            <!--
            <a href="https://l.jd.com/student/project/project.du?project_id=88665377">立即报名</a>
            -->
            <div class="head-join">
                立即报名
                <div class="head-join-desc"></div>
            </div>
        </div>
    </div>
</header>

