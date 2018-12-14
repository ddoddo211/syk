<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>NGRNetwork</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="shortcut icon" href="img/favicon.png">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="style/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="style/icon.css">
		<link rel="stylesheet" href="style/loader.css">
		<link rel="stylesheet" href="style/idangerous.swiper.css">
		<link rel="stylesheet" href="style/jquery-ui.css">
		<link rel="stylesheet" href="style/stylesheet.css">
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

		<!--[if lt IE 10]>
			<link rel="stylesheet" type="text/css" href="style/ie-9.css" />
		<![endif]-->		
		<!--[if lt IE 9]>
		    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    <style type="text/css">
	    .doublewidth {
	    	width: 95%;
	    	height: 500px;
	    	float: left;
	    }
	    
	    .liheight {
	    	max-height: 165.58px !important;
	    }
	    
	    .setheight{
	    	height: 280px !important;
	    }
	    
	    
	    #full_contents{
				 border:solid 1px green; margin-bottom:10px; height: 500px;
				 display: none;
				 clear:both;
				 box-sizing : border-box;
	    }
	    
	    #full_contents img {
	    	width: 500px;
	    	height: 450px;
	    	margin-top: 20px;
	    	margin-left: 10px;
	    	vertical-align: middle;
	    }
	    
	    .contentsDetail{
	    	width: 70%;
	    	float: left;
	    }
	    
	    .profileDetail{
	    	width: 30%;
	    	float: left;
	    }
	    
	    
	    </style>
	    <!-- .be-post .be-img-block img -->
	    
	    <script type="text/javascript">
	    
	    /*
	    	$(document).ready(function(){
	    		
	    		$(".be-img-block").addClass("liheight");
	    		
	    		var filter = "win16|win32|win64|mac|macintel"; 
	    		
	    		if ( navigator.platform ) { 
	    			if ( filter.indexOf( navigator.platform.toLowerCase() ) < 0 ){ 
	    				//mobile 
	    				//alert('mobile 접속'); 
	    				} 	else { //pc 
	    				//alert('pc 접속'); 
	    				} 
	    			}

				
	    		
	    		
	    		$(".custom-column-5").click(function(){
	    			if(filter.indexOf( navigator.platform.toLowerCase() ) < 0){
	    				// 모바일 접속
	    			} else {
		    			//$(this).find(".be-img-block").toggleClass("liheight");
		    			//$(this).find(".be-post .be-img-block img").toggleClass("setheight");
		    			//$(this).toggleClass("doublewidth");
	    			}
	    		}); // customcolumn 클래스 클릭이벤트 종료
	    		
	    		
	    		/////DIM 처리 레이어 팝업
	    		
	    		


	    		
	    		
	    	}); // document.ready 종료
	    */
	    
	    </script>
	    
	</head>
	<body >

	<!-- THE LOADER -->

<div class="be-loader">
    	<div class="spinner">
			<img src="img/logo.png"  alt="">
			<p class="circle">
			  <span class="ouro">
			    <span class="left"><span class="anim"></span></span>
			    <span class="right"><span class="anim"></span></span>
			  </span>
			</p>
		</div>
    </div>
	<!-- THE HEADER -->
	<%@ include file="/common/header.jsp" %>
		
	<!-- MAIN CONTENT -->
	<div id="content-block">
	<%--
	
		<div class="head-bg">
			<div class="head-bg-img"></div>
			<div class="head-bg-content">
				<h1>SNS / 커뮤니티</h1>
				<p>귀차나</p>
				<a class="btn color-1 size-1 hover-1" ><i class="fa fa-facebook"></i>sign up via facebook</a>
				<a class="be-register btn color-3 size-1 hover-6"><i class="fa fa-lock"></i>sign up now</a>
			</div>	
		</div>
	 --%>
		<div class="container-fluid cd-main-content custom-container">
			<div class="row">
			<%-- 
				<div class="col-md-2 left-feild">
					<form action="./" class="input-search">
						<input type="text" required="" placeholder="Enter keyword">
							<i class="fa fa-search"></i>
							<input type="submit" value="">
					</form>				
				</div>
			--%>			
				<div class="col-md-10 ">
					<div class="for-be-dropdowns">
						<div class="be-drop-down">
							<i class="icon-projects"></i>
							<span class="be-dropdown-content"> Projects	</span>
							<ul class="drop-down-list">
								<li class="filter" data-filter=".category-1"><a data-type="category-1">Projects</a></li>
								<li class="filter" data-filter=".category-2"><a data-type="category-2">Work in Progress</a></li>
								<li class="filter" data-filter=".category-3"><a data-type="category-3">People</a></li>
							</ul>
						</div>
						<%--
						<div class="be-drop-down">
							<i class="icon-creative"></i>
							<span class="be-dropdown-content">All Creative Filds
							</span>
							<ul class="drop-down-list">
								<li class="filter" data-filter=".category-4"><a>Item - 1</a></li>
								<li class="filter" data-filter=".category-5"><a>Item - 2</a></li>
								<li class="filter" data-filter=".category-1"><a>Item - 3</a></li>
							</ul>
						</div>
						<div class="be-drop-down">
							<i class="icon-features"></i>
							<span class="be-dropdown-content">Features
							</span>
							<ul class="drop-down-list">
								<li class="filter" data-filter=".category-2"><a>Featured</a></li>
								<li class="filter" data-filter=".category-3"><a>Most Appreciated</a></li>
								<li class="filter" data-filter=".category-4"><a>Most Viewed</a></li>
								<li class="filter" data-filter=".category-5"><a>Most Discussed</a></li>
								<li class="filter" data-filter=".category-1"><a>Most Recent</a></li>
							</ul>
						</div>
						<div class="be-drop-down">
							<i class="icon-worldwide"></i>
							<span class="be-dropdown-content">Worldwide
							</span>
							<ul class="drop-down-list">
								<li class="filter" data-filter=".category-2"><a>WorldWide</a></li>
								<li class="filter" data-filter=".category-3"><a>United States</a></li>
								<li class="filter" data-filter=".category-4"><a>Germany</a></li>
								<li class="filter" data-filter=".category-5"><a>United Kingdom</a></li>
							</ul>
						</div>
						--%>
					</div>				
				</div>
			</div>
		</div>		
		<div class="container-fluid custom-container">
			<div class="row">
				
				<div class="col-md-2 left-feild">
					<div class="be-vidget">
				<%-- 
						<h3 class="letf-menu-article">
							Popular Creative Filds
						</h3>
						<div class="creative_filds_block">
							<div class="ul">
								<a  data-filter=".category-1" class="filter">Graphic Design		</a>
								<a data-filter=".category-2" class="filter">Photography			</a>
								<a data-filter=".category-3" class="filter">Interaction Design	</a>
								<a data-filter=".category-4" class="filter">Art Direction		</a>
								<a data-filter=".category-5" class="filter">Illustration		</a>
							</div>
						</div>
						--%>
					</div>
					<div class="be-vidget">
					<%--
					
						<h3 class="letf-menu-article">
							Popular Tags
						</h3>
						<div class="tags_block clearfix">
							<ul>
								<li><a data-filter=".category-6" class="filter">photoshop</a></li>
								<li><a data-filter=".category-1" class="filter">graphic</a></li>
								<li><a data-filter=".category-2" class="filter">art</a></li>
								<li><a data-filter=".category-3" class="filter">website</a></li>
								<li><a data-filter=".category-4" class="filter">logo</a></li>
								<li><a data-filter=".category-5" class="filter">identity</a></li>
								<li><a data-filter=".category-6" class="filter">logo design</a></li>
								<li><a data-filter=".category-1" class="filter">interactive</a></li>
								<li><a data-filter=".category-2" class="filter">blue</a></li>
								<li><a data-filter=".category-3" class="filter">branding</a></li>
							</ul>
						</div>
					 --%>
					</div>
					<div class="be-vidget">
						<%-- 
						<h3 class="letf-menu-article">
							Filter By
						</h3>
						<div class="filter-block">
							<ul>
								<li><a><i class="fa fa-graduation-cap"></i>Schools</a>
									<div class="be-popup">
										<h3 class="letf-menu-article">
											Enter School
										</h3>
											<form action="./" class="input-search">
												<input class="filters-input" type="text" required placeholder="Start typing to see list">
											</form>
										<i class="fa fa-times"></i>
									</div>
								</li>
								<li><a><i class="fa fa-wrench"></i>Tools Used</a>
									<div class="be-popup">
										<h3 class="letf-menu-article">
											Tools
										</h3>
											<form action="./" class="input-search">
												<input class="filters-input" type="text" required placeholder="Start typing to see list">
											</form>
										<i class="fa fa-times"></i>
									</div>
								</li>
								<li><a><i class="fa fa-paint-brush"></i>Color</a>
									<div class="be-popup be-color-picker">
									<h3 class="letf-menu-article">
											Choose color
										</h3>
										<div class="for-colors">
											<ul class="colors  cfix">
												  <li data-filter=".category-1" class="color filter color-0-0"></li>
												  <li data-filter=".category-2" class="color filter color-0-1"></li>
												  <li data-filter=".category-3" class="color filter color-0-2"></li>
												  <li data-filter=".category-4" class="color filter color-0-3"></li>
												  <li data-filter=".category-5" class="color filter color-0-4"></li>
												  <li data-filter=".category-1" class="color filter color-0-5"></li>
												  <li data-filter=".category-2" class="color filter color-0-6"></li>
												  <li data-filter=".category-3" class="color filter color-0-7"></li>
												  <li data-filter=".category-4" class="color filter color-0-8"></li>
												  <li data-filter=".category-5" class="color filter color-0-9"></li>
												  <li data-filter=".category-1" class="color filter color-0-10"></li>
												  <li data-filter=".category-5" class="color filter color-0-11"></li>
												  <li data-filter=".category-1" class="color filter color-1-0"></li>
												  <li data-filter=".category-2" class="color filter color-1-1"></li>
												  <li data-filter=".category-1" class="color filter color-1-2"></li>
												  <li data-filter=".category-1" class="color filter color-1-3"></li>
												  <li data-filter=".category-1" class="color filter color-1-4"></li>
												  <li data-filter=".category-4" class="color filter color-1-5"></li>
												  <li data-filter=".category-1" class="color filter color-1-6"></li>
												  <li data-filter=".category-1" class="color filter color-1-7"></li>
												  <li data-filter=".category-6" class="color filter color-1-8"></li>
												  <li data-filter=".category-1" class="color filter color-1-9"></li>
												  <li data-filter=".category-1" class="color filter color-1-10"></li>
												  <li data-filter=".category-1" class="color filter color-1-11"></li>
												  <li data-filter=".category-1" class="color filter color-2-0"></li>
												  <li data-filter=".category-1" class="color filter color-2-1"></li>
												  <li data-filter=".category-1" class="color filter color-2-2"></li>
												  <li data-filter=".category-1" class="color filter color-2-3"></li>
												  <li data-filter=".category-1" class="color filter color-2-4"></li>
												  <li data-filter=".category-1" class="color filter color-2-5"></li>
												  <li data-filter=".category-1" class="color filter color-2-6"></li>
												  <li data-filter=".category-1" class="color filter color-2-7"></li>
												  <li data-filter=".category-1" class="color filter color-2-8"></li>
												  <li data-filter=".category-1" class="color filter color-2-9"></li>
												  <li data-filter=".category-1" class="color filter color-2-10"></li>
												  <li data-filter=".category-1" class="color filter color-2-11"></li>
												  <li data-filter=".category-1" class="color filter color-3-0"></li>
												  <li data-filter=".category-1" class="color filter color-3-1"></li>
												  <li data-filter=".category-1" class="color filter color-3-2"></li>
												  <li data-filter=".category-1" class="color filter color-3-3"></li>
												  <li data-filter=".category-1" class="color filter color-3-4"></li>
												  <li data-filter=".category-1" class="color filter color-3-5"></li>
												  <li data-filter=".category-1" class="color filter color-3-6"></li>
												  <li data-filter=".category-1" class="color filter color-3-7"></li>
												  <li data-filter=".category-1" class="color filter color-3-8"></li>
												  <li data-filter=".category-1" class="color filter color-3-9"></li>
												  <li data-filter=".category-1" class="color filter color-3-10"></li>
												  <li data-filter=".category-1" class="color filter color-3-11"></li>
												  <li data-filter=".category-1" class="color filter color-4-0"></li>
												  <li data-filter=".category-1" class="color filter color-4-1"></li>
												  <li data-filter=".category-1" class="color filter color-4-2"></li>
												  <li data-filter=".category-1" class="color filter color-4-3"></li>
												  <li data-filter=".category-1" class="color filter color-4-4"></li>
												  <li data-filter=".category-1" class="color filter color-4-5"></li>
												  <li data-filter=".category-1" class="color filter color-4-6"></li>
												  <li data-filter=".category-1" class="color filter color-4-7"></li>
												  <li data-filter=".category-1" class="color filter color-4-8"></li>
												  <li data-filter=".category-1" class="color filter color-4-9"></li>
												  <li data-filter=".category-1" class="color filter color-4-10"></li>
												  <li data-filter=".category-1" class="color filter color-4-11"></li>
												  <li data-filter=".category-1" class="color filter color-5-0"></li>
												  <li data-filter=".category-1" class="color filter color-5-1"></li>
												  <li data-filter=".category-1" class="color filter color-5-2"></li>
												  <li data-filter=".category-1" class="color filter color-5-3"></li>
												  <li data-filter=".category-1" class="color filter color-5-4"></li>
												  <li data-filter=".category-1" class="color filter color-5-5"></li>
												  <li data-filter=".category-1" class="color filter color-5-6"></li>
												  <li data-filter=".category-1" class="color filter color-5-7"></li>
												  <li data-filter=".category-1" class="color filter color-5-8"></li>
												  <li data-filter=".category-1" class="color filter color-5-9"></li>
												  <li data-filter=".category-1" class="color filter color-5-10"></li>
												  <li data-filter=".category-1" class="color filter color-5-11"></li>
												  <li data-filter=".category-1" class="color filter color-6-0"></li>
												  <li data-filter=".category-1" class="color filter color-6-1"></li>
												  <li data-filter=".category-6" class="color filter color-6-2"></li>
												  <li data-filter=".category-1" class="color filter color-6-3"></li>
												  <li data-filter=".category-1" class="color filter color-6-4"></li>
												  <li data-filter=".category-1" class="color filter color-6-5"></li>
												  <li data-filter=".category-1" class="color filter color-6-6"></li>
												  <li data-filter=".category-1" class="color filter color-6-7"></li>
												  <li data-filter=".category-1" class="color filter color-6-8"></li>
												  <li data-filter=".category-1" class="color filter color-6-9"></li>
												  <li data-filter=".category-1" class="color filter color-6-10"></li>
												  <li data-filter=".category-1" class="color filter color-6-11"></li>
												  <li data-filter=".category-1" class="color filter color-7-0"></li>
												  <li data-filter=".category-1" class="color filter color-7-1"></li>
												  <li data-filter=".category-1" class="color filter color-7-2"></li>
												  <li data-filter=".category-1" class="color filter color-7-3"></li>
												  <li data-filter=".category-1" class="color filter color-7-4"></li>
												  <li data-filter=".category-1" class="color filter color-7-5"></li>
												  <li data-filter=".category-1" class="color filter color-7-6"></li>
												  <li data-filter=".category-1" class="color filter color-7-7"></li>
												  <li data-filter=".category-1" class="color filter color-7-8"></li>
												  <li data-filter=".category-1" class="color filter color-7-9"></li>
												  <li data-filter=".category-1" class="color filter color-7-10"></li>
												  <li data-filter=".category-1" class="color filter color-7-11"></li>
												  <li data-filter=".category-1" class="color filter color-8-0"></li>
												  <li data-filter=".category-1" class="color filter color-8-1"></li>
												  <li data-filter=".category-1" class="color filter color-8-2"></li>
												  <li data-filter=".category-1" class="color filter color-8-3"></li>
												  <li data-filter=".category-1" class="color filter color-8-4"></li>
												  <li data-filter=".category-1" class="color filter color-8-5"></li>
												  <li data-filter=".category-1" class="color filter color-8-6"></li>
												  <li data-filter=".category-6" class="color filter color-8-7"></li>
												  <li data-filter=".category-1" class="color filter color-8-8"></li>
												  <li data-filter=".category-1" class="color filter color-8-9"></li>
												  <li data-filter=".category-1" class="color filter color-8-10"></li>
												  <li data-filter=".category-1" class="color filter color-8-11"></li>
												  <li data-filter=".category-1" class="color filter color-9-0"></li>
												  <li data-filter=".category-1" class="color filter color-9-1"></li>
												  <li data-filter=".category-1" class="color filter color-9-2"></li>
												  <li data-filter=".category-1" class="color filter color-9-3"></li>
												  <li data-filter=".category-6" class="color filter color-9-4"></li>
												  <li data-filter=".category-1" class="color filter color-9-5"></li>
												  <li data-filter=".category-1" class="color filter color-9-6"></li>
												  <li data-filter=".category-1" class="color filter color-9-7"></li>
												  <li data-filter=".category-1" class="color filter color-9-8"></li>
												  <li data-filter=".category-1" class="color filter color-9-9"></li>
												  <li data-filter=".category-1" class="color filter color-9-10"></li>
												  <li data-filter=".category-1" class="color filter color-9-11"></li>
											</ul>
										</div>
										<i class="fa fa-times"></i>
											
									</div>
								</li>
								<li><a><i class="fa fa-camera-retro"></i>Visit Gallery</a>
									<div class="be-popup">
										<h3 class="letf-menu-article">
											Galerry
										</h3>
											<form action="./" class="input-search">
												<input  class="filters-input" type="text" required placeholder="Start typing to see list">
											</form>
										<i class="fa fa-times"></i>
									</div>
								</li>
							</ul>
						</div> --%>
					</div>
				</div>
				
				
				<div class="col-md-10">
					<div id="container-mix"  class="row _post-container_">
					
					<div id="full_contents">
						</div>
					
					<c:forEach items="${contentList }" var="cl">
						<div class="category-1 mix custom-column-5">
							<input type="hidden" value="${cl.img }" class="imageURL"/>
							<div class="be-post ">
<!-- 								<a   class="be-img-block"> -->
								<a class="be-img-block" >
								<img src="${cl.img }" alt="omg">
								</a>
<!-- 								<a   class="be-post-title">The kitsch destruction of our world</a> -->
								<a  class="be-post-title">${cl.title }</a>
								<span>
									<%--
									<a href="blog-detail-2.html" class="be-post-tag">#봉명동</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">#츄르릅우동</a>
									 --%>  
								</span>
								<div class="author-post">
									<img src="img/a1.png" alt="" class="ava-author">
									<span>by <a  >${cl.author }</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> ${cl.like }</span>
									
									<%--
									<span><i class="fa fa-eye"></i> 789</span>
									
									 --%>
									<span><i class="fa fa-comment-o"></i> ${cl.comment }</span>
								</div>
							</div>
						</div>
					</c:forEach>
						
						<%--
						<div class="category-2 mix custom-column-5">
							<div class="be-post ">
								<a  class="be-img-block">
								<img src="https://scontent-icn1-1.xx.fbcdn.net/v/t1.0-9/44931480_1171958049625345_8093498001068130304_n.png?_nc_cat=106&_nc_ht=scontent-icn1-1.xx&oh=51e12999b9f423473b5c96e0370a8601&oe=5C84CE1B" alt="omg">
								</a>
								<a class="be-post-title">스타벅스 크로와상</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">#스타벅스</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">#초콜릿크로와상</a>,  
								</span>
								<div class="author-post">
									<img src="img/a1.png" alt="" class="ava-author">
									<span>by <a >대전맛집</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-3 mix custom-column-5">
							<div class="be-post">
								<a  class="be-img-block">
								<img src="img/p3.jpg" alt="omg">
								</a>
								<a  class="be-post-title">Colors of Ramadan</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a2.png" alt="" class="ava-author">
									<span>by <a >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-4 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p4.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Leaving Home - L'Officiel Ukraine</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a3.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-5 mix custom-column-5">
							<div class="be-post">
								<a  class="be-img-block">
								<img src="img/p5.jpg" alt="omg">
								</a>
								<a  class="be-post-title">Drive Your World</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a4.png" alt="" class="ava-author">
									<span>by <a >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-6 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p13.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Fran Ewald for The Diaries Project</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a5.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-7 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p7.jpg" alt="omg">
								</a>
								<a   class="be-post-title">raindrops monochrome</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a6.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-8 mix custom-column-5">
							<div class="be-post">
								<a  class="be-img-block">
								<img src="img/p8.jpg" alt="omg">
								</a>
								<a  class="be-post-title">Racing Queensland</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a7.png" alt="" class="ava-author">
									<span>by <a >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-9 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p9.jpg" alt="omg">
								</a>
								<a   class="be-post-title">NAHA Finalist Hairstylist of the Year Allen Ruiz</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a7.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-10 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p10.jpg" alt="omg">
								</a>
								<a   class="be-post-title">tomorrow</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a8.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-11 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p11.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Tropicalia</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a5.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-12 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p12.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Face</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a6.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-13 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p13.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Stay Ahead Series</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a5.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-14 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p14.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Faber-Castell / Psychological Problems</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a1.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						<div class="category-15 mix custom-column-5">
							<div class="be-post">
								<a   class="be-img-block">
								<img src="img/p15.jpg" alt="omg">
								</a>
								<a   class="be-post-title">Garry Simpson - Bridges - Intelligent Life Magazine</a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag">Interaction Design</a>, 
									<a href="blog-detail-2.html" class="be-post-tag">UI/UX</a>,  
									<a href="blog-detail-2.html" class="be-post-tag">Web Design</a>
								</span>
								<div class="author-post">
									<img src="img/a9.png" alt="" class="ava-author">
									<span>by <a  >Hoang Nguyen</a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i> 360</span>
									<span><i class="fa fa-eye"></i> 789</span>
									<span><i class="fa fa-comment-o"></i> 20</span>
								</div>
							</div>
						</div>
						--%>
						
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- THE FOOTER -->
	<footer>
<!-- 		<div class="footer_slider"> -->
<!-- 			<div class="swiper-container" data-autoplay="0" data-loop="1" data-speed="500" data-center="0" data-slides-per-view="responsive" data-xs-slides="4" data-sm-slides="8" data-md-slides="14" data-lg-slides="19" data-add-slides="19"> -->
<!-- 	            <div class="swiper-wrapper"> -->
<!-- 	            	<div class="swiper-slide active" data-val="0"> -->

<!-- 						<a href="gallery.html">				<img class="img-responsive img-full" src="img/f1.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="1"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f2.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="2"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f3.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="3"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f4.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="4"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f5.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="5"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f6.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="6"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f7.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="7"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f8.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="8"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f9.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="9"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f10.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="10"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f11.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="11"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f12.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="12"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f13.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="13"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f14.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="14"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f15.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="15"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f16.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="16"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f17.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="17"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f18.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="18"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f19.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="19"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f1.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="20"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f2.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="21"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f3.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="22"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f4.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            	<div class="swiper-slide" data-val="23"> -->
<!-- 						<a href="gallery.html"> -->

<!-- 	            		 	 <img class="img-responsive img-full" src="img/f5.jpg" alt=""> -->
<!-- 	            	 </a></div> -->
<!-- 	            </div> -->
<!-- 	            <div class="pagination hidden"></div> -->
<!-- 	        </div> -->
<!--         </div>	 -->
<!-- 		<div class="footer-main"> -->
<!-- 			<div class="container-fluid custom-container"> -->
<!-- 				<div class="row">	 -->
<!-- 					<div class="col-md-3 col-xl-4"> -->
<!-- 						<div class="footer-block"> -->
<!-- 							<h1 class="footer-title">About Us</h1> -->
<!-- 							<p>Vestibulum tincidunt, augue fermentum accumsan viverra, eros dui rutrum libero, nec imperdiet felis sem in augue luctus <a href="blog-detail-2.html">diam a porta</a> iaculis. Vivamus sit amet fermentum nisl. Duis id <a href="blog-detail-2.html">massa id purus</a> tristique varius a sit amet est. Fusce dolor libero, efficitur et lobortis at, faucibus nec nunc.</p> -->
<!-- 							<ul class="soc_buttons"> -->
<!-- 								<li><a href=""><i class="fa fa-facebook"></i></a></li> -->
<!-- 								<li><a href=""><i class="fa fa-twitter"></i></a></li> -->
<!-- 								<li><a href=""><i class="fa fa-google-plus"></i></a></li> -->
<!-- 								<li><a href=""><i class="fa fa-pinterest-p"></i></a></li> -->
<!-- 								<li><a href=""><i class="fa fa-instagram"></i></a></li> -->
<!-- 								<li><a href=""><i class="fa fa-linkedin"></i></a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-3 col-xl-2"> -->
<!-- 						<div class="footer-block"> -->
<!-- 							<h1 class="footer-title">Some Links</h1> -->
<!-- 							<div class="row footer-list-footer"> -->
<!-- 							<div class="col-md-6"> -->
<!-- 							<ul class="link-list"> -->
<!-- 								<li><a href="about-us.html">About Us</a></li> -->
<!-- 								<li><a href="contact-us.html">Help</a></li> -->
<!-- 								<li><a href="contact-us.html">Contacts</a></li> -->
<!-- 								<li><a href="activity.html">Job</a></li> -->
<!-- 								<li><a href="activity.html">Projets</a></li> -->
<!-- 							</ul></div> -->
<!-- 							<div class="col-md-6"> -->
<!-- 							<ul class="link-list"> -->
<!-- 								<li><a href="activity.html">New Works</a></li> -->
<!-- 								<li><a href="author.html">Popular Authors</a></li> -->
<!-- 								<li><a href="author.html">New Authors</a></li> -->
<!-- 								<li><a href="people.html">Career</a></li> -->
<!-- 								<li><a href="faq">FAQ</a></li> -->
<!-- 							</ul> -->
<!-- 							</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div>				 -->
<!-- 					<div class="col-md-3 galerry"> -->
<!-- 						<div class="footer-block">					 -->
<!-- 							<h1 class="footer-title">Recent Works</h1> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g1.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g2.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g3.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g4.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g5.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g6.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g7.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g8.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g9.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g10.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g11.jpg" alt=""></a> -->
<!-- 							<a href="blog-detail-2.html"><img src="img/g12.jpg" alt=""></a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-3"> -->
<!-- 						<div class="footer-block"> -->
<!-- 							<h1 class="footer-title">Subscribe On Our News</h1> -->
<!-- 							<form action="./" class="subscribe-form"> -->
<!-- 								<input type="text" placeholder="Yout Name" required> -->
<!-- 								<div class="submit-block"> -->
<!-- 									<i class="fa fa-envelope-o"></i> -->
<!-- 									<input type="submit" value=""> -->
<!-- 								</div> -->
<!-- 							</form> -->
<!-- 							<div class="soc-activity"> -->
<!-- 								<div class="soc_ico_triangle"> -->
<!-- 									<i class="fa fa-twitter"></i> -->
<!-- 								</div> -->
<!-- 								<div class="message-soc"> -->
<!-- 									<div class="date">16h ago</div> -->
<!-- 									<a href="blog-detail-2.html" class="account">@faq</a> vestibulum accumsan est <a href="blog-detail-2.html" class="heshtag">blog-detail-2.htmlmalesuada</a> sem auctor, eu aliquet nisi ornare leo sit amet varius egestas. -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="footer-bottom">
			<div class="container-fluid custom-container">
				<div class="col-md-12 footer-end clearfix">
					<div class="left">
						<span class="copy">© 2018. All rights reserved. <span class="white"><a href="blog-detail-2.html"> FFUNQ</a></span></span>
						<span class="created">Created with BMS by <span class="white"><a href="blog-detail-2.html"> SYK</a></span></span>
					</div>
					<div class="right">
						<a class="btn color-7 size-2 hover-9">About Us</a>
						<a class="btn color-7 size-2 hover-9">Help</a>
						<a class="btn color-7 size-2 hover-9">Privacy Policy</a>
					</div>
				</div>			
			</div>
		</div>		
	</footer>

	<div class="be-fixed-filter"></div>
	
	<div class="large-popup login">
		<div class="large-popup-fixed"></div>
		<div class="container large-popup-container">
			<div class="row">
				<div class="col-md-8 col-md-push-2 col-lg-6 col-lg-push-3  large-popup-content">
					<div class="row">
						<div class="col-md-12">
							<i class="fa fa-times close-button"></i>
							<h5 class="large-popup-title">Log in</h5>
						</div>
						
						
						<%-- 로그인 팝업창 --%>
						<form action="/syk/login" class="popup-input-search" method="post">
						<div class="col-md-6">
							<input class="input-signtype" type="text" required="" placeholder="너의 ID" name="userId">
						</div>
						<div class="col-md-6">
							<input class="input-signtype" type="password" required="" placeholder="비밀번호" name="pass">
						</div>
						<div class="col-xs-6">
							<div class="be-checkbox">
							<label class="check-box">
								    <input class="checkbox-input" type="checkbox" value=""> <span class="check-box-sign"></span>
								</label>
								<span class="large-popup-text">
									Stay signed in
								</span>
							</div>
							
							<a href="blog-detail-2.html" class="link-large-popup">Forgot password?</a>
						</div>
						<div class="col-xs-6 for-signin">
							<input type="submit" class="be-popup-sign-button" value="SIGN IN">
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="large-popup register">
		<div class="large-popup-fixed"></div>
		<div class="container large-popup-container">
			<div class="row">
				<div class="col-md-10 col-md-push-1 col-lg-8 col-lg-push-2 large-popup-content">
					<div class="row">
						<div class="col-md-12">
							<i class="fa fa-times close-button"></i>
							<h5 class="large-popup-title">Register</h5>
						</div>
						<form action="./" class="popup-input-search">
						<div class="col-md-6">
							<input class="input-signtype" type="text" required="" placeholder="First Name">
						</div>
						<div class="col-md-6">
							<input class="input-signtype" type="text" required="" placeholder="Last Name">
						</div>
						<div class="col-md-6">
							<div class="be-custom-select-block">
							<select class="be-custom-select">
								<option value="" disabled selected>
									Country
								</option>
								<option value="">USA</option>
								<option value="">Canada</option>
								<option value="">England</option>
							</select>
							</div>
						</div>
						<div class="col-md-6">
							<input class="input-signtype" type="text" required="" placeholder="Email">
						</div>
						<div class="col-md-6">
							<input class="input-signtype" type="text" required="" placeholder="Password">
						</div>
						<div class="col-md-6">
							<input class="input-signtype" type="text" required="" placeholder="Repeat Password">
						</div>
						<div class="col-md-12 be-date-block">
							<span class="large-popup-text">
								Date of birth
							</span>
							<div class="be-custom-select-block mounth">
								<select class="be-custom-select">
									<option value="" disabled selected>
										Mounth
									</option>
									<option value="">January</option>	
									<option value="">February</option>	
									<option value="">March</option>	
									<option value="">April</option>	
									<option value="">May</option>	
									<option value="">June</option>	
									<option value="">July</option>	
									<option value="">August</option>	
									<option value="">September</option>	
									<option value="">October</option>	
									<option value="">November</option>	
									<option value="">December</option>
								</select>
							</div>
							<div class="be-custom-select-block">
								<select class="be-custom-select">
									<option value="" disabled selected>
										Day
									</option>
									<option value="">1</option>
									<option value="">2</option>
									<option value="">3</option>
									<option value="">4</option>
									<option value="">5</option>
									<option value="">6</option>
									<option value="">7</option>
									<option value="">8</option>
									<option value="">9</option>
									<option value="">10</option>
									<option value="">11</option>
									<option value="">12</option>
									<option value="">13</option>
									<option value="">14</option>
									<option value="">15</option>
									<option value="">16</option>
									<option value="">17</option>
									<option value="">18</option>
									<option value="">19</option>
									<option value="">20</option>
									<option value="">21</option>
									<option value="">22</option>
									<option value="">23</option>
									<option value="">24</option>
									<option value="">25</option>
									<option value="">26</option>
									<option value="">27</option>
									<option value="">28</option>
									<option value="">29</option>
									<option value="">30</option>
								</select>
							</div>
							<div class="be-custom-select-block">
								<select class="be-custom-select">
									<option value="" disabled selected>
										Year
									</option>
									<option value="">1996</option>
									<option value="">1997</option>
									<option value="">1998</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="be-checkbox">
								<label class="check-box">
								    <input class="checkbox-input" type="checkbox" required="" value="" > <span class="check-box-sign"></span>
								</label>
								<span class="large-popup-text">
									I have read and agree to the <a class="be-popup-terms" href="blog-detail-2.html">Terms of Use</a> and <a class="be-popup-terms" href="blog-detail-2.html">Privacy Policy</a>.
								</span>
							</div>
							<div class="be-checkbox">
								<label class="check-box">
								    <input class="checkbox-input" type="checkbox" value="" > <span class="check-box-sign"></span>
								</label>
								<span class="large-popup-text">
									Send me notifications
								</span>
							</div>
						</div>
						<div class="col-md-6 for-signin">
							<input type="submit" class="be-popup-sign-button" value="SIGN IN">
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%--
	
	<div class="theme-config">
	    <div class="main-color">
	        <div class="title">Main Color:</div>
	        <div class="colours-wrapper">
	            <div class="entry color1 m-color active" data-colour="style/stylesheet.css"></div>   
	            <div class="entry color3 m-color"  data-colour="style/style-green.css"></div>
	            <div class="entry color6 m-color"  data-colour="style/style-orange.css"></div>
	            <div class="entry color8 m-color"  data-colour="style/style-red.css"></div>  
	            <div class="title">Second Color:</div>  
	            <div class="entry s-color  active color10"  data-colour="style/stylesheet.css"></div>
	            <div class="entry s-color color11"  data-colour="style/style-oranges.css"></div> 
	            <div class="entry s-color color12"  data-colour="style/style-greens.css"></div>
	            <div class="entry s-color color13"  data-colour="style/style-reds.css"></div>
	        </div>
	    </div>
	   <div class="open"><img src="img/icon-134.png" alt=""></div>
	</div>
	 --%>
	
	</body>
	
	<script>
		var global_index;
		function show_contents(index)
		{
			var width = window.innerWidth;
			var split = 5;		
			if(width > 1500)
			{
				split = 5;
			}
			else if(width > 1200)
			{
				split = 4;
			}
			else if(width > 767)
			{
				split = 3;
			}
			else if(width > 600)
			{
				split = 2;
			}
			else
			{
				console.log('disable');
				$("#full_contents").hide();
				return false;
			}
			
			//  3 / 5 = 0.6
			//  5 / 5 = 1
			// 17 / 5 = 3.4   4번쨰 줄 = 15번에 붙이기
			var append_raw_cal = Math.ceil(index / split);
			var append_point = (append_raw_cal-1) * split;
			
			console.log("split:"+split);
			console.log("AP:"+append_point);
		
			//$(".custom-column-5").eq(append_point).before("<div style='border:solid 1px red; clear:both; height:500px;'>test ogogogogogogoogog</div>");
			$("#full_contents").insertBefore($(".custom-column-5").eq(append_point));
			$("#full_contents").show();
			
		}
		$(document).ready(function()
		{
		$(".be-post .be-img-block img").addClass("liheight");	
			
			
			$(".custom-column-5").click(function()
			{
				$("#full_contents *").remove();
				var index = $(this).index();
				global_index = index;
				
				console.log("INDEX:"+$(this).index());				
				show_contents(index);
				
				var imgURL = $(this).children(".imageURL").val();
				$("#full_contents").append("<div class='contentsDetail'><img src='"+imgURL+"'/></div>");
				$("#full_contents").append("<div class='profileDetail'><p>author profile</p></div>");
				
			});
			
			//로그인 버튼이 logout 일때 세션 invalidate 후에 페이지 새로고침하기
			$(".btn-login").on("click",function(){
				if($(".login_block").children()[0].innerText==" LOG IN"){

				} else {
					console.log("buttonclick");
					location.href="/syk/logout";
					
				}
			});
			
		});

		window.onresize = function()
		{
			console.log(window.innerWidth);
			if(global_index) show_contents(global_index);			
		}
		</script>
	
	
	
	
</html>