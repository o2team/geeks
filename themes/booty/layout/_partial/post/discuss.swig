<div class='column-header' id='round-table'>
  <h2>ROUND-TABLE</h2>
  <h3>圆桌讨论</h3>
</div>
<div class='discuss column-container'>
  <div class='discuss__content'>
    <div class='discuss__title'>{{ post.discuss.title }}</div>
    <div class='discuss__desc'>
      {% for desc in post.discuss.desc %}
      {{ desc }}<br />
      {% endfor%}
    </div>
    <div class='discuss__square'></div>
    <div class='discuss__area'>
      <ul class='discuss__list'>
        {% for guest in post.discuss.guests %}
        <li>{{ guest.name }} | {{ guest.team }}</li>
        {% endfor%}
      </ul>
    </div>
  </div>
  <div class='discuss__preview'>
    {% for guest in post.discuss.guests %}
    <div class='discuss__preview-img'>
      <img src={{ guest.image }}></img>
    </div>
    {% endfor%}
  </div>
</div>