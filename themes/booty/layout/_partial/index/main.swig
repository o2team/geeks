<section class="index-main">
    <div class='column-header' id='topic'>
      <h2>TOPIC</h2>
      <h3>大咖开讲</h3>
    </div>
    <ul class='column-container'>
        {% for topic in site.data.topic %}
        <li class="topic">
          <div class="topic-img">
            <img src="{{ topic.image }}" alt="头像">
          </div>
          <div class="topic-content">
            <h2>{{ topic.title }}</h2> 
            <p class="topic-desc">{{ topic.desc }}</p>
            <div class='topic-text'>
              <p class="topic-author">{{ topic.author }}</p>
              <p class="topic-team">{{ topic.team }}</p>
            </div>
          </div>
        </li>
        {% endfor%}
    </ul>

    <div class='column-header' id='round-table'>
      <h2>ROUND-TABLE</h2>
      <h3>圆桌讨论</h3>
    </div>
    <div class='discuss column-container'>
      <div class='discuss__content'>
        <div class='discuss__title'>技术提升与个人成长</div>
        <div class='discuss__desc'>在工作中，你是否为如何有效提升自己的技术而感到困惑？是否在日新月异的技术发展面前感到迷茫？是否为无法合理安排时间而感到苦恼？<br>
我们请来了四位前端资深大佬，希望能为你拨云见日，指点迷津！</div>
        <div class='discuss__square'></div>
        <div class='discuss__area'>
          <ul class='discuss__list'>
            <li>李伟涛 | 京东·凹凸实验室团队</li>
            <li>王   勇 | 京东·凹凸实验室团队</li>
            <li>桂永红 | 京东·凹凸实验室团队</li>
            <li>胡俊文 | 京东·未知素团队</li>
          </ul>
        </div>
      </div>
      <div class='discuss__preview'>
        <div class='discuss__preview-img'>
          <img src='img/lwt.jpg'></img>
        </div>
        <div class='discuss__preview-img'>
          <img src='img/wy.jpg'></img>
        </div>
        <div class='discuss__preview-img'>
          <img src='img/gyh.jpg'></img>
        </div>
        <div class='discuss__preview-img'>
          <img src='img/hjw.jpg'></img>
        </div>
      </div>
    </div>

    <div class='column-header' id='address'>
      <h2>ADDRESS</h2>
      <h3>会议地址</h3>
    </div>
    <div class='address column-container'>
      <div class='address__site'></div>
      <div class='address__map'></div>
    </div>

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

    <div class='about'>
      <div class='about__header'>
        <div>
          <div class='column-header'>
            <h2>ABOUT</h2>
            <h3>关于极客沙龙</h3>
          </div>
          <div class='about__desc column-container'>极客沙龙是由京东凹凸实验室主办的技术主题沙龙，每个季度举办。我们会邀请行业内的优秀团队与我们一起分享技术经验，畅谈工作心得。欢迎您的参与！</div>
        </div>
        <div class='about__img'><img src='img/qrcode.jpg'></img></div>
      </div>
      
      
    </div>
</section>
