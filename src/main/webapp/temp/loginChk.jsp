<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String adminid = "admin";
String adminpass = "java";

String userId = request.getParameter("userId");
String pass = request.getParameter("pass");

if(userId.equals(adminid) && pass.equals(adminpass)){
	request.getSession().setAttribute("userId",userId);
	response.sendRedirect("/syk/index.jsp");

} else {
	response.sendRedirect("/syk/index.jsp");
}


%>