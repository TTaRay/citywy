<!-- Navigation -->
<header class="nav">

  <div class="nav__holder nav--sticky">
    <div class="container relative">
      <div class="flex-parent">

        <!-- Side Menu Button -->
        <button class="nav-icon-toggle" id="nav-icon-toggle" aria-label="Open side menu">
          <span class="nav-icon-toggle__box">
            <span class="nav-icon-toggle__inner"></span>
          </span>
        </button> <!-- end Side menu button -->

        <!-- Mobile logo -->
        <a href="index.html" class="logo logo--mobile d-lg-none">
          <img class="logo__img" src="/images/logo_mobile.png" srcset="/images/logo_mobile.png 1x, /images/logo_mobile@2x.png 2x" alt="logo">
        </a>

        <!-- Nav-wrap -->
        <nav class="flex-child nav__wrap d-none d-lg-block">              
          <ul class="nav__menu">

            <li <#if headmenu?? && headmenu==1>class="active"</#if>>
              <a href="//www.citywy.com">首页</a>
            </li>

            <li class="nav__dropdown  <#if headmenu?? && headmenu==2>active</#if>">
              <a href="/develop/">软件开发</a>
              <ul class="nav__dropdown-menu">
                <li><a href="single-post-gallery.html">JAVA</a></li>
                <li><a href="single-post.html">HTML</a></li>
                <li><a href="single-post.html">Linux</a></li>
                <li><a href="single-post.html">javascript</a></li>
                <li><a href="single-post.html">discuz</a></li>
                <li><a href="single-post.html">dedecms</a></li>
                <li><a href="single-post.html">wordpress</a></li>
              </ul>
            </li>

            <li class="nav__dropdown <#if headmenu?? && headmenu==3>active</#if>" >
              <a href="#">SEO知识</a>
              <ul class="nav__dropdown-menu">
                <li><a href="about.html">seo技术</a></li>
                <li><a href="contact.html">seo教程</a></li>
                <li><a href="operate.html">运营管理</a></li>
              </ul>
            </li>

            <li <#if headmenu?? && headmenu==4>class="active"</#if>>
              <a href="/know/">美文分享</a>
            </li>

            <li <#if headmenu?? && headmenu==5>class="active"</#if>>
              <a href="#">行业资讯</a>
            </li>


          </ul> <!-- end menu -->
        </nav> <!-- end nav-wrap -->

        <!-- Nav Right -->
        <div class="nav__right nav--align-right d-lg-flex">

          <!-- Socials -->
          <div class="nav__right-item socials nav__socials d-none d-lg-flex"> 
            <a class="social social-facebook social--nobase" href="#" target="_blank" aria-label="facebook">
              <i class="ui-facebook"></i>
            </a>
            <a class="social social-twitter social--nobase" href="#" target="_blank" aria-label="twitter">
              <i class="ui-twitter"></i>
            </a>
            <a class="social social-google social--nobase" href="#" target="_blank" aria-label="google">
              <i class="ui-google"></i>
            </a>
            <a class="social social-youtube social--nobase" href="#" target="_blank" aria-label="youtube">
              <i class="ui-youtube"></i>
            </a>
            <a class="social social-instagram social--nobase" href="#" target="_blank" aria-label="instagram">
              <i class="ui-instagram"></i>
            </a>
          </div>

          <!-- Search -->
          <div class="nav__right-item nav__search">
            <a href="#" class="nav__search-trigger" id="nav__search-trigger">
              <i class="ui-search nav__search-trigger-icon"></i>
            </a>
            <div class="nav__search-box" id="nav__search-box">
              <form class="nav__search-form">
                <input type="text" placeholder="Search an article" class="nav__search-input">
                <button type="submit" class="search-button btn btn-lg btn-color btn-button">
                  <i class="ui-search nav__search-icon"></i>
                </button>
              </form>
            </div>
            
          </div>

        </div> <!-- end nav right -->  
    
      </div> <!-- end flex-parent -->
    </div> <!-- end container -->

  </div>
</header> <!-- end navigation -->