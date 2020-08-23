<!DOCTYPE html>
<html>
<head>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  	<title>知识列表页-未央博客</title>
  	<meta name="keywords" content="" />
	<meta name="description" content="" />  
  	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
 	 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  	<meta name="description" content="">
  	<!-- Google Fonts -->
  	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet'>
  	<!-- Css -->
  	<link rel="stylesheet" href="/css/bootstrap.min.css" />
  	<link rel="stylesheet" href="/css/font-icons.css" />
  	<link rel="stylesheet" href="/css/style.css" />
  	<!-- Favicons -->
  	<link rel="shortcut icon" href="/images/favicon.ico">
  	<link rel="apple-touch-icon" href="/images/apple-touch-icon.png">
  	<link rel="apple-touch-icon" sizes="72x72" href="/images/apple-touch-icon-72x72.png">
  	<link rel="apple-touch-icon" sizes="114x114" href="/images/apple-touch-icon-114x114.png">
  	<!-- Lazyload -->
  	<script src="/js/lazysizes.min.js"></script>
</head>

<body class="bg-light single-post">

  <!-- Preloader -->
  <div class="loader-mask">
    <div class="loader">
      <div></div>
    </div>
  </div>
  
  <!-- Bg Overlay -->
  <div class="content-overlay"></div>

  <#include 'public/sidenav.ftl'>
  
  <main class="main oh" id="main">
	<#include 'public/top.ftl'>
    <!-- Header -->
    <div class="header">
      <div class="container">
        <div class="flex-parent align-items-center">
          
          <!-- Logo -->
          <a href="index.html" class="logo d-none d-lg-block">
            <img class="logo__img" src="/images/logo.png" srcset="/images/logo.png 1x, /images/logo@2x.png 2x" alt="logo">
          </a>

          <!-- Ad Banner 728 -->
          <div class="text-center">
            <a href="#">
              <img src="/images/blog/placeholder_leaderboard.jpg" alt="">
            </a>
          </div>
        </div>
      </div>
    </div> <!-- end header -->

    <div class="main-container container" id="main-container">
		<ul class="breadcrumbs">
			<li class="breadcrumbs__item">
			  <a href="//www.citywy.com" class="breadcrumbs__url"><i class="ui-home"></i></a>
			</li>
			<li class="breadcrumbs__item">
			  <a href="//www.citywy.com/know/" class="breadcrumbs__url">美文分享</a>
			</li>
			<#--<li class="breadcrumbs__item breadcrumbs__item--current">
			  World
			</li>-->
		</ul>
      <!-- Content -->
      <div class="row">
            
        <!-- post content -->
        <div class="col-lg-8 blog__content mb-30">
			
		<#if page.result?? && page.result?size!=0>
			<#list page.result as know>
				<article class="entry post-list">
					<div class="entry__img-holder post-list__img-holder">
						<a href="single-post.html">
							<div class="thumb-container thumb-75">
								<img  src="${know.logo!}" class="entry__img lazyload" alt="${know.title!}">
							</div>
						</a>
					</div>
					
					<div class="entry__body post-list__body">
						<div class="entry__header">
							<a href="#" class="entry__meta-category">business</a>
								<h2 class="entry__title">
								<a href="single-post.html">${know.title!}</a>
							</h2>
							<ul class="entry__meta">
								<li class="entry__meta-author">
									<i class="ui-author"></i>
									<a href="#">${know.source!}</a>
								</li>
								<li class="entry__meta-date">
									<i class="ui-date"></i>
									${know.eSave!?string("yyyy-MM-dd HH:mm:ss")}
									</li>
									<li class="entry__meta-comments">
									<i class="ui-comments"></i>
									<a href="#">${know.eReply!}</a>
								</li>
							</ul>
						</div>
						<div class="entry__excerpt">
							<p>${know.summary!}</p>
						</div>
					</div>
				</article>
			</#list>
		</#if>
			
			<!-- Pagination -->
			<#include 'public/page.ftl'>

        </div> <!-- end col -->
        
        <!-- Sidebar -->
        <aside class="col-lg-4 sidebar sidebar--right">

          <!-- Widget Social Subscribers -->
          <div class="widget widget-social-subscribers">
            <ul class="widget-social-subscribers__list">
              <li class="widget-social-subscribers__item">
                <a href="#" class="widget-social-subscribers__url widget-social-subscribers--facebook">
                  <i class="ui-facebook widget-social-subscribers__icon"></i>
                  <span class="widget-social-subscribers__number">15369</span>
                  <span class="widget-social-subscribers__text">Fans</span>
                </a>
              </li>
              <li class="widget-social-subscribers__item">
                <a href="#" class="widget-social-subscribers__url widget-social-subscribers--twitter">
                  <i class="ui-twitter widget-social-subscribers__icon"></i>
                  <span class="widget-social-subscribers__number">15369</span>
                  <span class="widget-social-subscribers__text">Followers</span>
                </a>
              </li>
              <li class="widget-social-subscribers__item">
                <a href="#" class="widget-social-subscribers__url widget-social-subscribers--google">
                  <i class="ui-google widget-social-subscribers__icon"></i>
                  <span class="widget-social-subscribers__number">15369</span>
                  <span class="widget-social-subscribers__text">Followers</span>
                </a>
              </li>
              <li class="widget-social-subscribers__item">
                <a href="#" class="widget-social-subscribers__url widget-social-subscribers--rss">
                  <i class="ui-rss widget-social-subscribers__icon"></i>
                  <span class="widget-social-subscribers__number">15369</span>
                  <span class="widget-social-subscribers__text">Subscribers</span>
                </a>
              </li>
              <li class="widget-social-subscribers__item">
                <a href="#" class="widget-social-subscribers__url widget-social-subscribers--youtube">
                  <i class="ui-youtube widget-social-subscribers__icon"></i>
                  <span class="widget-social-subscribers__number">15369</span>
                  <span class="widget-social-subscribers__text">Subscribers</span>
                </a>
              </li>
              <li class="widget-social-subscribers__item">
                <a href="#" class="widget-social-subscribers__url widget-social-subscribers--instagram">
                  <i class="ui-instagram widget-social-subscribers__icon"></i>
                  <span class="widget-social-subscribers__number">15369</span>
                  <span class="widget-social-subscribers__text">Followers</span>
                </a>
              </li>
            </ul>
          </div>

          <!-- Widget Newsletter -->
          <div class="widget widget_mc4wp_form_widget">
            <h4 class="widget-title">Subscribe for news</h4>
            <form class="mc4wp-form" method="post">
              <div class="mc4wp-form-fields">
                <p>
                  <input type="email" name="EMAIL" placeholder="Your email" required="">
                </p>
                <p>
                  <input type="submit" class="btn btn-lg btn-color" value="Subscribe">
                </p>
              </div>
            </form>
          </div> <!-- end widget newsletter -->
          
          <!-- Widget Popular/Latest Posts -->
          <div class="widget widget-tabpost">
            <div class="tabs widget-tabpost__tabs">
              <ul class="tabs__list widget-tabpost__tabs-list">
                <li class="tabs__item widget-tabpost__tabs-item tabs__item--active">
                  <a href="#tab-trending" class="tabs__url tabs__trigger widget-tabpost__tabs-url">Trending</a>
                </li>                                 
                <li class="tabs__item widget-tabpost__tabs-item">
                  <a href="#tab-latest" class="tabs__url tabs__trigger widget-tabpost__tabs-url">Latest</a>
                </li>                                 
                <li class="tabs__item widget-tabpost__tabs-item">
                  <a href="#tab-comments" class="tabs__url tabs__trigger widget-tabpost__tabs-url">Comments</a>
                </li>                                 
              </ul> <!-- end tabs -->
              
              <!-- tab content -->
              <div class="tabs__content tabs__content-trigger widget-tabpost__tabs-content">
                
                <div class="tabs__content-pane tabs__content-pane--active" id="tab-trending">
                  <ul class="post-list-small">
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_1.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">Google is fixing its troubling burger emoji in Android 8.1</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_2.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">How Meditation Can Transform Your Business</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_3.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">June in Africa: Taxi wars, smarter cities and increased investments</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_4.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">PUBG Desert Map Finally Revealed, Here Are All The Details</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                  </ul>
                </div>
                
                <div class="tabs__content-pane" id="tab-latest">
                  <ul class="post-list-small">
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_2.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">How Meditation Can Transform Your Business</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_1.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">Google is fixing its troubling burger emoji in Android 8.1</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>                    
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_3.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">June in Africa: Taxi wars, smarter cities and increased investments</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_4.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">PUBG Desert Map Finally Revealed, Here Are All The Details</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                  </ul>
                </div>
                
                <div class="tabs__content-pane" id="tab-comments">
                  <ul class="post-list-small">
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_3.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">June in Africa: Taxi wars, smarter cities and increased investments</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_1.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">Google is fixing its troubling burger emoji in Android 8.1</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_2.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">How Meditation Can Transform Your Business</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>                    
                    <li class="post-list-small__item">
                      <article class="post-list-small__entry clearfix">
                        <div class="post-list-small__img-holder">
                          <div class="thumb-container thumb-75">
                            <a href="single-post.html">
                              <img data-src="images/blog/popular_post_4.jpg" src="images/empty.png" alt="" class=" lazyload">
                            </a>
                          </div>
                        </div>
                        <div class="post-list-small__body">
                          <h3 class="post-list-small__entry-title">
                            <a href="single-post.html">PUBG Desert Map Finally Revealed, Here Are All The Details</a>
                          </h3>
                          <ul class="entry__meta">
                            <li class="entry__meta-date">
                              <i class="ui-date"></i>
                              21 October, 2017
                            </li>
                          </ul>
                        </div>                  
                      </article>
                    </li>
                  </ul>
                </div>
                
              </div> <!-- end tab content -->
            </div> <!-- end tabs -->            
          </div> <!-- end widget popular/latest posts -->

          <!-- Widget Ad 300 -->
          <div class="widget widget_media_image">
            <a href="#">
              <img src="images/blog/placeholder_300.jpg" alt="">
            </a>
          </div> <!-- end widget ad 300 -->          

          <!-- Widget Socials -->
          <div class="widget widget-socials">
            <h4 class="widget-title">Follow us</h4>
            <div class="socials">
              <a class="social social-facebook social--large" href="#" title="facebook" target="_blank" aria-label="facebook">
                <i class="ui-facebook"></i>
              </a><!--
              --><a class="social social-twitter social--large" href="#" title="twitter" target="_blank" aria-label="twitter">
                <i class="ui-twitter"></i>
              </a><!--
              --><a class="social social-google-plus social--large" href="#" title="google" target="_blank" aria-label="google">
                <i class="ui-google"></i>
              </a><!--
              --><a class="social social-instagram social--large" href="#" title="instagram" target="_blank" aria-label="instagram">
                <i class="ui-instagram"></i>
              </a><!--
              --><a class="social social-youtube social--large" href="#" title="youtube" target="_blank" aria-label="youtube">
                <i class="ui-youtube"></i>
              </a><!--
              --><a class="social social-rss social--large" href="#" title="rss" target="_blank" aria-label="rss">
                <i class="ui-rss"></i>
              </a>
            </div>
          </div> <!-- end widget socials -->

          <!-- Widget Twitter -->
          <div class="widget">
            <h4 class="widget-title">Our tweets</h4>
            <div class="tweets-container">
              <div id="tweets"></div>                  
            </div>
          </div>

          <!-- Widget Ad 125 -->
          <div class="widget widget-gallery-sm">
            <ul class="widget-gallery-sm__list">
              <li class="widget-gallery-sm__item">
                <a href="#"><img src="images/blog/placeholder_125.jpg" alt=""></a>
              </li>
              <li class="widget-gallery-sm__item">
                <a href="#"><img src="images/blog/placeholder_125.jpg" alt=""></a>
              </li>
              <li class="widget-gallery-sm__item">
                <a href="#"><img src="images/blog/placeholder_125.jpg" alt=""></a>
              </li>
              <li class="widget-gallery-sm__item">
                <a href="#"><img src="images/blog/placeholder_125.jpg" alt=""></a>
              </li>
            </ul>
          </div> <!-- end widget ad 300 -->

          <!-- Widget Carousel -->
          <div class="widget">
            <h4 class="widget-title">Featured Posts</h4>
            <div id="owl-single" class="owl-carousel owl-theme">

              <article class="entry">
                <div class="entry__img-holder mb-0">
                  <a href="single-post.html">
                    <div class="thumb-bg-holder">
                      <img data-src="images/blog/featured_post_img_1.jpg" src="images/blog/featured_post_img_1.jpg" class="entry__img owl-lazy" alt="">
                      <div class="bottom-gradient"></div>
                    </div>
                  </a>
                </div>

                <div class="thumb-text-holder">  
                  <h2 class="thumb-entry-title thumb-entry-title--sm">
                    <a href="single-post.html">Myanmar little monk reading book outside monastery</a>
                  </h2>
                </div>
              </article>

              <article class="entry">
                <div class="entry__img-holder mb-0">
                  <a href="single-post.html">
                    <div class="thumb-bg-holder">
                      <img data-src="images/blog/featured_post_img_2.jpg" src="images/blog/featured_post_img_2.jpg" class="entry__img owl-lazy" alt="">
                      <div class="bottom-gradient"></div>
                    </div>
                  </a>
                </div>

                <div class="thumb-text-holder">  
                  <h2 class="thumb-entry-title thumb-entry-title--sm">
                    <a href="single-post.html">Spectacular display of northern lights illuminates sky</a>
                  </h2>
                </div>
              </article>


            </div>
          </div>

          <!-- Latest Reviews -->
          <div class="widget widget-reviews">
            <h4 class="widget-title">Latest Reviews</h4>
            <ul class="post-list-small">
              <li class="post-list-small__item">
                <article class="post-list-small__entry clearfix">
                  <div class="post-list-small__img-holder">
                    <div class="thumb-container thumb-75">
                      <a href="single-post.html">
                        <img data-src="images/blog/review_post_1.jpg" src="images/blog/review_post_1.jpg" alt="" class=" lazyload">
                      </a>
                    </div>
                  </div>
                  <div class="post-list-small__body">
                    <h3 class="post-list-small__entry-title">
                      <a href="single-post.html">My First Impressions of iPhone X</a>
                    </h3>
                    <ul class="entry__meta">
                      <li class="entry__meta-rating">
                        <i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star-outline"></i>
                      </li>
                    </ul>
                  </div>                  
                </article>
              </li>
              <li class="post-list-small__item">
                <article class="post-list-small__entry clearfix">
                  <div class="post-list-small__img-holder">
                    <div class="thumb-container thumb-75">
                      <a href="single-post.html">
                        <img data-src="images/blog/review_post_2.jpg" src="images/empty.png" alt="" class=" lazyload">
                      </a>
                    </div>
                  </div>
                  <div class="post-list-small__body">
                    <h3 class="post-list-small__entry-title">
                      <a href="single-post.html">The Best Laptops for Kids</a>
                    </h3>
                    <ul class="entry__meta">
                      <li class="entry__meta-rating">
                        <i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star-outline"></i>
                      </li>
                    </ul>
                  </div>                  
                </article>
              </li>
              <li class="post-list-small__item">
                <article class="post-list-small__entry clearfix">
                  <div class="post-list-small__img-holder">
                    <div class="thumb-container thumb-75">
                      <a href="single-post.html">
                        <img data-src="images/blog/review_post_3.jpg" src="images/empty.png" alt="" class=" lazyload">
                      </a>
                    </div>
                  </div>
                  <div class="post-list-small__body">
                    <h3 class="post-list-small__entry-title">
                      <a href="single-post.html">PS4 Joypads Pre-Orders Start Friday in NYC</a>
                    </h3>
                    <ul class="entry__meta">
                      <li class="entry__meta-rating">
                        <i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star-outline"></i>
                      </li>
                    </ul>
                  </div>                  
                </article>
              </li>
              <li class="post-list-small__item">
                <article class="post-list-small__entry clearfix">
                  <div class="post-list-small__img-holder">
                    <div class="thumb-container thumb-75">
                      <a href="single-post.html">
                        <img data-src="images/blog/review_post_4.jpg" src="images/empty.png" alt="" class=" lazyload">
                      </a>
                    </div>
                  </div>
                  <div class="post-list-small__body">
                    <h3 class="post-list-small__entry-title">
                      <a href="single-post.html">Hands on: Parrot AR Drone 2.0 review</a>
                    </h3>
                    <ul class="entry__meta">
                      <li class="entry__meta-rating">
                        <i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star"></i><!--
                        --><i class="ui-star-outline"></i>
                      </li>
                    </ul>
                  </div>                  
                </article>
              </li>
            </ul>
          </div>

          <!-- Widget Tags -->
          <div class="widget widget_tag_cloud">
            <h4 class="widget-title">Tags</h4>
            <div class="tagcloud">
              <a href="#">Magazine</a>
              <a href="#">Creative</a>
              <a href="#">Responsive</a>
              <a href="#">Modern</a>
              <a href="#">Tech</a>
              <a href="#">WordPress</a>
              <a href="#">Website</a>
              <a href="#">News</a>
            </div>
          </div>

        </aside> <!-- end sidebar -->
      
      </div> <!-- end content -->
    </div> <!-- end main container -->
	
	<#include 'public/footer.ftl'>

  </main> <!-- end main-wrapper -->

  <!-- jQuery Scripts -->
  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/easing.min.js"></script>
  <script src="/js/owl-carousel.min.js"></script>
  <script src="/js/twitterFetcher_min.js"></script>
  <script src="/js/modernizr.min.js"></script>
  <script src="/js/jquery.appear.min.js"></script>
  <script src="/js/scripts.js"></script>

</body>
</html>