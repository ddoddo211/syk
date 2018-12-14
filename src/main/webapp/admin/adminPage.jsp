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
<!-- 		<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
		

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
	    	margin-top: 0px;
	    	width: 1000px;
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
	    
	    .url {
	    	width: 700px;
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
	<script>
	 $( function() {
       $( "#datepicker" ).datepicker();
       $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
     } );
	</script>
	
	<%-- 글 추가 div --%>
	<div class="what">
		<%-- 수동 추가 --%>
		<form action="/syk/addList" method="post" enctype="multipart/form-data">
			<br><br>
			
			<p>플랫폼 선택
			<br>
			<select name="platform">
				<option value="">:: 플랫폼 선택 ::</option>
				<option value="facebook">페북</option>
				<option value="instagram">인스타</option>
				<option value="other">기타</option>
			</select>
			<br><br>
			<input name="by" type="hidden" value="${userId}"/>
			<p>author( ex) 대전맛집, jtbc뉴스) : </p>
			<input type="text" name="author"/>
			
			<br><br>
			<p>제목</p>
			<input type="text" name="title" />
			
			<br><br>
			<p>Content(본문내용)</p><br>
			<textarea rows="5" cols="100" name="content"></textarea>
			
			<br><br>
			<p>첨부파일URL : </p>
			<input type="text" name="imgurl" class="url"/>
			
			<br><br>
			<p>첨부파일</p>
			<input type="file" multiple="multiple" name="imgpath" />
			
			<br><br>
			<p>type</p>
			<select name="type">
				<option value="normal">일반</option>
				<option value="share">share</option>
			</select>
			
			<br><br>
			<p>Date: <input type="text" id="datepicker" name="date"></p>
			
			<br><br>
			<p>time : <input type="time" name="time" /> </p>
			
			<br><br>
			<p>좋아요 수</p>
			<input type="text" name="like" />
			<br>
			<p>댓글수</p>
			<input type="text" name="comment" />
			
			
			<br><br>
			<p>글 direct link url</p>
			<input type="text" name="directLink" class="url"/>
			
			<br><br>
			<p>글노출 유무</p>
			<select name="show">
				<option value="true">show</option>
				<option value="false">hide</option>
			</select>
			<br><br>
			
			<input type="submit" value="수동생성"/>
			
			
		</form>
		
	
	
		<br><br><br><br>
		<%-- 자동추가 --%>
		<form action="/syk/autoAdd" method="post">
			<input type="submit" value="자동생성">
		</form>
	
	</div>
	
	
	<!-- THE FOOTER -->

	<div class="be-fixed-filter">
	
	</div>
	
	</body>
	
	
	
	
	
</html>