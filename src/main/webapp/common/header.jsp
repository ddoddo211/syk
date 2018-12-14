<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<!-- SCRIPTS	 -->
	<script src="/syk/script/jquery-2.1.4.min.js"></script>
	<script src="/syk/script/jquery-ui.min.js"></script>
	<script src="/syk/script/bootstrap.min.js"></script>		
	<script src="/syk/script/idangerous.swiper.min.js"></script>
	<script src="/syk/script/jquery.mixitup.js"></script>
	<script src="/syk/script/jquery.viewportchecker.min.js"></script>
	<script src="/syk/script/filters.js"></script>
	<script src="/syk/script/global.js?ver=1"></script>    

<header>
		<div class="container-fluid custom-container">
			<div class="row no_row row-header">
				<div class="brand-be">
					<a href="/syk/list">
						<img class="logo-c active be_logo"  	src="/syk/img/logo.png" alt="logo">
						<img class="logo-c be_logo" 			src="/syk/img/logo-green.png" alt="logo2">
						<img  class="logo-c be_logo" 			src="/syk/img/logo-orang.png" alt="logo3">
						<img class="logo-c be_logo" 			src="/syk/img/logo-red.png" alt="logo4">
					</a>
				</div>
				<div class="header-menu-block">
					<button class="cmn-toggle-switch cmn-toggle-switch__htx"><span></span></button>
					<ul class="header-menu" id="one">
						<li><a href="activity.html">SNS</a>
							<ul>
								<li><a href="#">--</a></li>
								<li><a href="#">페이스북</a></li>
								<li><a href="#">--</a></li>
							</ul>
						</li>
							
						<li><a href="search.html">커뮤니티</a>
							<ul>
								<li><a href="#">--</a></li>
								<li><a href="#">--</a></li>
								<li><a href="#">--</a></li>
							</ul>
						</li>
						
						
							<%
							String userId = "";
							if(session.getAttribute("userId")!=null){
								userId = (String)session.getAttribute("userId");
							} %>
							
							<%--
						<li><a href="#">유투브</a></li>
						<li><a href="#">자유게시판</a></li>
							
							 --%>
						
						
						<%
						if(userId.equals("admin")){
							%> 
							<li><a href="/syk/admin">관리자 페이지</a></li>
							<%
							} else {
								%>   <%
							}
						%>
						
						
						
						<li id="ad-work-li">
						<a>
							<%
							if(userId.equals("admin")){
								%>  <%=userId+" 님 어서오세요" %>    <%
							} else {
								%>  <%=" "%>    <%
							}
							%>
							
							<%--
							<script>
						$(".login_block .btn-login").on("click",function(){
							if($(".login_block").children()[0].innerText==" LOG IN"){
			
							} else {
								<% 
								session.invalidate(); 
								%>
								window.location.reload();
								
							}
		
							return false;
							});
						</script>
						 --%>
						
						</a>
						</li>
					</ul>
				</div>
				
				<div class="login-header-block">
					<div class="login_block">
						<a class="btn-login btn color-1 size-2 hover-2" href="" ><i class="fa fa-user"></i>
						<%
							if(userId.equals("")){
								%>  Log in    <%
							} else {
								%>  Log out    <%
							}
							%>
						
						</a>
					</div>	
				</div>
			</div>
		</div>
	</header>
	
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
				var index = $(this).index();
				global_index = index;
				
				console.log("INDEX:"+$(this).index());				
				show_contents(index);
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