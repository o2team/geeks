<article class="post" itemscope itemtype="http://schema.org/Article">
    <a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">
        <div class="post-cover" itemscope itemtype="http://schema.org/ImageObject">
            <img src="{{ post.cover }}" alt="{{ post.title }}" itemprop="contentUrl"/>
            <span class="post-ovl"></span>
        </div>
        <div class="post-info">
            <h3 class="post-tit" itemprop="name headline">{{ post.title }}</h3>
            <p class="post-desc" itemprop="about">{{ post.subtitle }}</p>
        </div>
    </a>
</article>