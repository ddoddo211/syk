package kr.co.ffunq.list.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.util.ISO8601DateFormat;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClientSettings;
import com.mongodb.MongoCredential;
import com.mongodb.MongoWriteException;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

@WebServlet("/autoAdd")
public class AutoAddListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ip = "13.209.4.174";
		int port = 17000;
		String databaseName = "admin";
		
		
		String user = "developer";
		char[] password = new char[]{'a','a','1','2','3','1','2','3','a','a','!'};
		
		MongoCredential credential = MongoCredential.createCredential(user, databaseName, password);
		
		MongoClient mongoClient = MongoClients.create(
		        MongoClientSettings.builder()
		                .applyToClusterSettings(builder -> 
		                        builder.hosts(Arrays.asList(new ServerAddress(ip, port))))
		                .credential(credential)
		                .build());
		
		MongoDatabase database = mongoClient.getDatabase("funq");
		
		MongoCollection<Document> coll = database.getCollection("contents");
		
		
		
//		coll.find(Filters.eq("author","jaeseong3219")).forEach(printBlock);
		//coll.find().forEach(addList);
		
		//몽고 document insert
//		BasicDBObject document = new BasicDBObject();
		Document document = new Document();
		document.put("platform","facebook");
		document.put("by","bms");
		document.put("author","BBang");
		document.put("title","111");
		document.put("content","스타벅스 초코크로와상 조르맛꾸르맛");
		
		//attach 큰그릇 만들기
		BasicDBObject attach = new BasicDBObject();
		
//		// attach 안의 1번 데이터 생성
//		BasicDBObject innerAttach1 = new BasicDBObject();
//		innerAttach1.put("type", "img");
//		innerAttach1.put("data", "https://scontent-icn1-1.xx.fbcdn.net/v/t1.0-9/44931480_1171958049625345_8093498001068130304_n.png?_nc_cat=106&_nc_ht=scontent-icn1-1.xx&oh=51e12999b9f423473b5c96e0370a8601&oe=5C84CE1B");
//		
//		//attach 안의 2번 데이터 생성
//		BasicDBObject innerAttach2 = new BasicDBObject();
//		innerAttach2.put("type", "img2");
//		innerAttach2.put("data", "https://postfiles.pstatic.net/20160528_69/ddalgi1707_1464445992156Ptx4s_JPEG/NaverBlog_20160528_223311_15.jpg?type=w2");
		
		// attach 에다가 1, 2 넣기
		attach.put("1", "{\"type\":\"img\", \"data\":\"https://scontent-icn1-1.xx.fbcdn.net/v/t1.0-9/44931480_1171958049625345_8093498001068130304_n.png?_nc_cat=106&_nc_ht=scontent-icn1-1.xx&oh=51e12999b9f423473b5c96e0370a8601&oe=5C84CE1B\"");
		attach.put("2", "{\"type\":\"img2\", \"data\":\"https://postfiles.pstatic.net/20160528_69/ddalgi1707_1464445992156Ptx4s_JPEG/NaverBlog_20160528_223311_15.jpg?type=w2\"");
		
		//document 에다가 attach 넣기
		document.put("attach", attach);
		
		document.put("type", "normal");
		
		//날짜구함
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date today1 = new Date();
		Date today=null;
		String temp = sdf.format(today1);
		try {
			today = sdf.parse(temp);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		System.out.println("temp : " + temp);
		System.out.println("today : " + today);
		//date  해결하기
		document.put("date", today);
		int likeNum = 45;
		int commentNum = 45;
		
		document.put("like", likeNum);
		document.put("comment", commentNum);
		document.put("directLink","www.daum.net");
		
		document.put("createdAt",today);
		document.put("updatedAt",today);
		
		document.put("show", true);
		document.put("authorType", "user");
		document.put("insertMethod", "manual");
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonString;
		boolean status = true;
		
		try {
			jsonString = mapper.writeValueAsString(document);
			Document doc = Document.parse(jsonString);
			coll.insertOne(document);
		} catch (MongoWriteException mwe) {
			mwe.printStackTrace();
			status = false;
		} catch (IOException e){
			e.printStackTrace();
			status = false;
		}
		System.out.println(status);
		
		
		/*
		// delete 파트!!!!!!!!!!!!!!!!!
		
		BasicDBObject query = new BasicDBObject();
		query.append("_id", new ObjectId("5c00a2f0e90c0a11bc7418a8"));
		Document resultDocument = coll.findOneAndDelete(query);
		System.out.println(resultDocument);
		
		*/
		
		RequestDispatcher rd = request.getRequestDispatcher("/admin");
		rd.forward(request, response);
	}

}
