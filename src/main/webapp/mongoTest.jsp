<%@page import="com.mongodb.MongoClientOptions"%>
<%@page import="java.util.concurrent.CountDownLatch"%>
<%-- <%@page import="com.mongodb.MongoClient"%> --%>
<%@page import="com.mongodb.MongoClientURI"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.mongodb.client.MongoClient"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.client.MongoClients"%>
<%-- <%@page import="com.mongodb.MongoClientSettings"%> --%>
<%@page import="com.mongodb.MongoCredential"%>
<%@page import="com.mongodb.ServerAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
// 	String ip = "13.209.4.174";
// 	int port = 17000;
// 	String databaseName = "admin";
	
// 	String user = "developer";
// 	char[] password = new char[]{'a','a','1','2','3','1','2','3','a','a','!'};
	
// 	MongoCredential credential = MongoCredential.createCredential(user, databaseName, password);
	
// 	MongoClient mongoClient = MongoClients.create(
// 			MongoClientSettings.builder()
// 			.applyToClusterSettings(builder -> 
// 			builder.hosts(Arrays.asList(new ServerAddress(ip, port))))
// 			.credential(credential)
// 			.build());
	/*
 	MongoClientURI uri = new MongoClientURI("mongodb://developer:aa123123aa!@"+ip+":27017/?authSource=admin");
//	MongoClientURI uri = new MongoClientURI("mongodb://"+ip);
	MongoClient mongoClient = new MongoClient(uri);	
	*/
	String ip = "13.209.4.174";
	MongoClient mongoClient = MongoClients.create("mongodb://developer:aa123123aa!@"+ip+":17000/?authSource=admin");		
	MongoDatabase database = mongoClient.getDatabase("funq");
	MongoCollection<Document> coll = database.getCollection("contents");
	
	
	/*
	coll.insertOne(new Document("lala","hehe"),
				(result, t) -> {
					System.out.println("Pperation finished!");
					latch.countDown();
				}	);
	*/
	
	FindIterable<Document> fi = coll.find();
	String str = fi.first().toString();
	out.println(str);


%>

</body>
</html>