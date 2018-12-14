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
	    
	    .authorCon{
	    	width: 600px;
	    	float: left;
	    	border: 1px solid red;
	    	
	    }
	    
	    .inputt{
	    	width: 350px;
	    }
	    
	    .thth {
	    	width: 100px;
	    	height: 30px;
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
	
	
	<%-- main --%>
	
	<%-- author list 출력 --%>
	<div class="authorCon">
		list 출력
		
		<table border="1">
			<tr>
				<th class="thth" >author</th>
				<th class="thth" >category</th>
				<th class="thth" >tag</th>
				<th class="thth" >userDesc</th>
			</tr>
			
			<c:forEach items="${authorList }" var="al" >
			<tr>
				<td>${al.author }</td>
				<td>
					<c:forEach items="${al.category }" var="ct" >
						${ct } /
					</c:forEach>
				</td>
				<td>
					<c:forEach items="${al.tag }" var="tg" >
						${tg} /
					</c:forEach>
				</td>
				<td>${al.userDesc }</td>
			</tr>
			</c:forEach>
			
		</table>
		
	</div>
	
	<%-- author 수동 추가 --%>
	<div class="authorCon">
		<form action="/syk/addAuthor" method="post">
			<p>platform</p>
			<select name="platform">
				<option value="">:: 선택해라 ::</option>
				<option value="facebook">페이스북</option>
				<option value="instagram">인스타그램</option>
				<option value="other">기타</option>
			</select>
			
			<br><br>
			<p>authorType</p>
			<select name="authorType">
				<option value="">:: 선택해라 ::</option>
				<option value="page">page글</option>
				<option value="user">user글</option>
				<option value="other">기타</option>
			</select>
			
			<br><br>
			<p> author </p>
			<input type="text" name="author" class="inputt"/>
			
			<br><br>
			<p> profileImg(url) </p>
			<input type="text" name="profileImg" class="inputt"/>
			
			<br><br>
			<p> startDate </p>
			<input type="text" id="datepicker" name="date" class="inputt"/>
			<br>
			<p> + time : <input type="time" name="time" class="inputt" /> </p>
			
			<br><br>
			<p> follower </p>
			<input type="text" name="follower" class="inputt"/>
			
			<br><br>
			<p> follwing </p>
			<input type="text" name="following" class="inputt"/>
			
			<br><br>
			<p>category 최대 10개까지</p>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			<input type="text" name="category[]" class="inputt"/><br>
			
			<br><br>
			<p>tag 최대 10개까지</p>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			<input type="text" name="tag[]" class="inputt"/><br>
			
			<br><br>
			<p> userDesc </p>
			<input type="text" name="userDesc"/>
			
			<br><br>
			<p> subDesc </p>
			<input type="text" name="supDesc"/>
			
			<br><br>
			<p> otherInfo 최대 10개 (ex) highschool : 둔원고)</p>
			<input type="text" name="oikey1"/> : <input type="text" name="oivalue1"   class="inputt"        /> <br>
			<input type="text" name="oikey2"/> : <input type="text" name="oivalue2"   class="inputt"        /> <br>
			<input type="text" name="oikey3"/> : <input type="text" name="oivalue3"   class="inputt"        /> <br>
			<input type="text" name="oikey4"/> : <input type="text" name="oivalue4"   class="inputt"        /> <br>
			<input type="text" name="oikey5"/> : <input type="text" name="oivalue5"   class="inputt"        /> <br>
			<input type="text" name="oikey6"/> : <input type="text" name="oivalue6"   class="inputt"        /> <br>
			<input type="text" name="oikey7"/> : <input type="text" name="oivalue7"   class="inputt"        /> <br>
			<input type="text" name="oikey8"/> : <input type="text" name="oivalue8"   class="inputt"        /> <br>
			<input type="text" name="oikey9"/> : <input type="text" name="oivalue9"   class="inputt"        /> <br>
			<input type="text" name="oikey10"/> : <input type="text" name="oivalue10" class="inputt"        /> <br>
			
			<input type="submit" value="전송하기"/>
			<br><br>
		</form>
	</div>
	
	
	
	<!-- THE FOOTER -->

	<div class="be-fixed-filter">
	
	</div>
	
	</body>
	
	
	
	
	
</html>