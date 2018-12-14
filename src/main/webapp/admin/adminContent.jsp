<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>NGRNetwork</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="shortcut icon" href="/syk/img/favicon.png">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="/syk/style/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="/syk/style/icon.css">
		<link rel="stylesheet" href="/syk/style/loader.css">
		<link rel="stylesheet" href="/syk/style/idangerous.swiper.css">
		<link rel="stylesheet" href="/syk/style/jquery-ui.css">
		<link rel="stylesheet" href="/syk/style/stylesheet.css">
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
	    	max-height: 197px !important;
	    }
	    
	    .setheight{
	    	height: 280px !important;
	    }
	    
	    
	    #full_contents{
				 border:solid 1px green; margin-bottom:10px; height: 500px;
				 display: none;
				 clear:both;
	    }
	    
	    .what{
	    	margin-top: 200px;
	    	width: 600px;
	    	height: 1200px;
	    	border: 1px solid red;
	    	padding-left: 20px;
	    }
	    .what p {
	    	color: black;	
	    
	    }
	    
	    #headerContainer{
	    	width: 100%;
	    	background-color: #A4A4A4;
	    	margin-top: 60px;
	    	height: 70px;
	    }
	    
	    .adminHeader{
	    	float: left;
	    	height: 100%;
	    	width: 100px;
	    	margin-top: 30px;
	    }
	    
	    .adminHeader a{
	    	color: white; 
	    	text-decoration: none;
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
			<img src="/syk/img/logo.png"  alt="">
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
								<script>
	    <%
	    String temp = "";
						if(userId.equals("admin")){
							%> 
							<%
							} else {
								
								temp = "alert('권한이 없어요!'); window.history.back();";
								
							}
						%>
						console.log('??<%=userId%>');
						<%=temp%>
								</script>  
		
	<!-- MAIN CONTENT -->
	<%--글목록 출력 div --%>
	<%--
	<div class="what">
		<div class="datalist">
			<ul>
				<c:forEach items="${contentList }" var="cl" varStatus="i">
					 <li>${i.index +1} : ${cl.content }</li>
				</c:forEach>
			</ul>
		</div> 
	
	
	</div>
	 --%>
	 
	<%@ include file="/admin/adminHeader.jsp" %>
	
	
	
	<!-- THE FOOTER -->

	<div class="be-fixed-filter">
	
	</div>
	
	</body>
	
	
	
	
	
</html>