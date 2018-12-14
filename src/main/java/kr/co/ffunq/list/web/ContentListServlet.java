package kr.co.ffunq.list.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ffunq.list.model.ListVo;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.Block;
import com.mongodb.MongoClient;
//import com.mongodb.MongoClientSettings;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
//import com.mongodb.client.MongoClient;
//import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

@WebServlet("/list")
public class ContentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<ListVo> contentList;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		contentList = new ArrayList<ListVo>();
		
		
		/*
		String ip = "13.209.4.174";
		int port = 17000;
		String databaseName = "admin";
		
		
		String user = "developer";
		char[] password = new char[]{'a','a','1','2','3','1','2','3','a','a','!'};
		 * 
		 * 
		 * String ip = "127.0.0.1";
		MongoCredential credential = MongoCredential.createCredential(user, databaseName, password);
		
		MongoClient mongoClient = MongoClients.create(
				MongoClientSettings.builder()
				.applyToClusterSettings(builder -> 
				builder.hosts(Arrays.asList(new ServerAddress(ip, port))))
				.credential(credential)
				.build());
		MongoClient mongoClient = MongoClients.create("mongodb://developer:aa123123aa!@127.0.0.1:17000/?authSource=admin");		
		*/
		
		
		String ip = "13.209.4.174";
		MongoClientURI uri = new MongoClientURI("mongodb://developer:aa123123aa!@"+ip+":17000/?authSource=admin");
		MongoClient mongoClient = new MongoClient(uri);	
		MongoDatabase database = mongoClient.getDatabase("funq");				
		MongoCollection<Document> coll = database.getCollection("contents");
//		coll.insertOne(new Document("lala","hehe"),
//				(result, t) -> {
//					System.out.println("Pperation finished!");
//					latch.countDown();
//				}	);
		
		
		coll.find().forEach(addList);		
//		coll.find();
		//coll.find(Filters.eq("author","jaeseong3219")).toString();
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//
//		PrintWriter out = response.getWriter();
//
//		
//		out.println(database.listCollectionNames().first()); 
//		out.println(coll.find(Filters.eq("author","jaeseong3219")).iterator()); 
		//out.println("<script> alert("+coll.find(Filters.eq("author","jaeseong3219")).toString()+"); </script>"); 
//		out.close();


		request.setAttribute("contentList", contentList);	
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
	
	
	
	//변수명 호출시 document 에서 데이터를 읽어와 list에 담는다
    Block<Document> addList = new Block<Document>(){
        @Override
        public void apply(final Document document) {
            // TODO Auto-generated method stub
//            System.out.println("author :" +document.get("author"));
            String author = (String)document.get("author");
            
            String by = document.getString("by");
            
            String title = document.getString("title");
            
            String content = document.getString("content");
            
            int like = document.getInteger("like");
            int comment = document.getInteger("comment");
            
            //Date date = document.getDate("date");
            
            ObjectId id = document.getObjectId("_id");
            //id확인
//            System.out.println("id확인용" + id);
            
            //이미지
            Document attach = (Document) document.get("attach");
            String attach_1 = attach.getString("1");
            int startIndex = attach_1.indexOf("data");
            int lastIndex = attach_1.lastIndexOf("\"");
            String img = attach_1.substring(startIndex+7, lastIndex);
//            System.out.println("img 출력확인 : " + img);
            
            ListVo listVo = new ListVo();
            listVo.setAuthor(author);
            listVo.setBy(by);
            listVo.setTitle(title);
            listVo.setContent(content);
            listVo.setLike(like);
            listVo.setComment(comment);
            //listVo.setDate(date);
            listVo.setId(id);
            listVo.setImg(img);
            
            contentList.add(listVo);
            
            
            
        }        
    };
	
	

}
