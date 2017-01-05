<article class="post" itemscope itemtype="http://schema.org/Article">
    <div class="post-cover" itemscope itemtype="http://schema.org/ImageObject">
        <img src="{{ post.cover }}" alt="{{ post.title }}" itemprop="contentUrl" />
        <span class="post-ovl"></span>
        <a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}" class="btn btn-greyline post-btn">查看详情&nbsp;&xrarr;</a>
    </div>
    <div class="post-info">
        <h3 class="post-tit" itemprop="name headline"><a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">{{ post.title }}</a></h3>
        <p class="post-desc" itemprop="about">{{ post.subtitle }}</p>
    </div>
</article>
