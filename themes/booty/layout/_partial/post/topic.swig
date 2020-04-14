<div class='column-header' id='topic'>
  <h2>TOPIC</h2>
  <h3>大咖开讲</h3>
</div>
<ul class='column-container'>
  {% for topic in post.topic %}
  <li class="topic">
    <div class="topic-img">
      <img src="{{ topic.image }}" alt="头像">
    </div>
    <div class="topic-content">
      <h2>
        {% if topic.video %}
        <a class="topic-link" href="javascript:;" id="topic-link" onclick="(function(){
          document.querySelector('body').setAttribute('style', 'width: 100%; height: 100%; overflow: hidden;')
          document.querySelector('video').setAttribute('src', '{{ topic.video }}')
          document.querySelector('#topic-video').setAttribute('style', 'display: block')
        })()">
        <span class="topic-btn"></span>
        {{ topic.title }}
        </a>
        {% else %}
        {{ topic.title }}
        {% endif %}
      </h2>
      <p class="topic-desc">{{ topic.desc }}</p>
      <div class='topic-text'>
        {% if topic.time %}
        <p class="topic-time">{{ topic.time }}</p>
        {% endif %}
        <p class="topic-author">{{ topic.author }}&nbsp;&nbsp;|&nbsp;&nbsp;{{ topic.team }}</p>
      </div>
    </div>
  </li>
  {% endfor%}
</ul>
<div class="topic-video" id="topic-video">
  <video preload="auto" controls="controls"></video>
  <a class="topic-video-close" href="javascript:;" onclick="(function(){
    document.querySelector('body').setAttribute('style', '')
    document.querySelector('video').setAttribute('src', '')
    document.querySelector('#topic-video').setAttribute('style', 'display: none;')
  })()"></a>
</div>