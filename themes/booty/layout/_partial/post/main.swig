<!-- Post -->
<article class="post" style="display:none">    
    <div class="post-content">
        {{ post.content}}
    </div>
</article>

<div id="slider" class="sl-slider-wrapper">

    <div class="sl-slider">
        
        <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-45" data-slice2-rotation="-10" data-slice1-scale="1.5" data-slice2-scale="1">
            <div class="sl-slide-inner">
                <div class="deco" data-icon=""><img src="{{post.logo}}" alt="凹凸有致"/></div>
                <h2>{{post.shorttitle}}</h2>
                <blockquote><div class="quote-inner">{{post.subtitle}}</div><cite><a href="//aotu.io" target="_blank">{{post.copyright}}</a></cite></blockquote>
                <a href="/" title="Back to Home" class="sl-back-btn"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
            </div>
        </div>

        <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="15" data-slice2-rotation="8" data-slice1-scale="1.5" data-slice2-scale="1">
            <div class="sl-slide-inner">
                <div id="album" class="album ani-fade">
                    <h2 class="album-hd">分享嘉宾</h2>
                    <div class="album-bd">
                        {% for slide in post.slides %}
                        {% if slide.author %}
                        <div class="album-grid">
                            <div class="album-grid-bd">
                                <div class="album-item">
                                    <img class="album-img v-center" src="{{slide.avatar}}" alt="{{slide.author}}"/>                  
                                </div>
                                <div class="album-tit">
                                    <h3 class="album-tit-bd v-center"><span class="album-author">{{slide.author}}</span><span class="album-tit-text">{{slide.title}}</span></h3>
                                </div>
                            </div>
                        </div>
                        {% endif %}
                        {% endfor %}
                    </div>  
                </div> 
            </div>
        </div>

        {% for slide in post.slides %}
        <div class="sl-slide sl-slide-{{loop.index}} {{slide.xclass}}" 
            data-orientation="{{slide.orientation}}"
            data-slice1-rotation="{{slide.slice1.rotation}}"
            data-slice2-rotation="{{slide.slice2.rotation}}"
            data-slice1-scale="{{slide.slice1.scale}}"
            data-slice2-scale="{{slide.slice2.scale}}">
            <div class="sl-slide-inner">
                {% if slide.ficon %}
                <div class="deco" data-ficon="&{{slide.ficon}}"></div>
                {% else %}
                <div class="deco"><img src="{{slide.avatar}}" alt="{{slide.author}}"/></div>
                {% endif %}
                <h2>{{slide.title}}</h2>
                <blockquote><p>{{slide.desc}}</p><cite>{{slide.author}}</cite></blockquote>
            </div>
        </div>
        {% endfor %}

    </div><!-- /sl-slider -->
    
    <nav id="nav-arrows" class="nav-arrows">
        <span class="nav-arrow-prev">Previous</span>
        <span class="nav-arrow-next">Next</span>
    </nav>

    <nav id="nav-dots" class="nav-dots">
        {% for slide in post.slides %}
        <span{% if loop.first %} class="nav-dot-current"{% endif %}></span>
        {% endfor %}
    </nav>

</div><!-- /slider-wrapper -->