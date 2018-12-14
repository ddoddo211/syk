package kr.co.ffunq.list.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.MongoClientSettings;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

@WebServlet("/addAuthor")
public class AddAuthorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String platform;
		String authorType;
		String author;
		String profileImg;
		Date startDate = new Date(); //
		int follower;
		int follwing;
		List<String> category = new ArrayList<String>();
		List<String> tag = new ArrayList<String>();
		String userDesc; 
		String supDesc;
		Map<String,String> otherInfo = new HashMap<String, String>();
		Date createdAt = new Date(); //
		Date updatedAt = new Date(); //
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String tempDate = request.getParameter("date")+" "+request.getParameter("time");
		try {
			startDate = sdf.parse(tempDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String temp = sdf.format(new Date());
		try {
			createdAt = sdf.parse(temp);
			updatedAt = sdf.parse(temp);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		platform = request.getParameter("platform");
		authorType = request.getParameter("authorType");
		author = request.getParameter("author");
		profileImg = request.getParameter("profileImg");
		follower = Integer.parseInt(request.getParameter("follower"));
		follwing = Integer.parseInt(request.getParameter("following"));
		
		String[] categoryArray = request.getParameterValues("category[]");
		for(int n = 0 ; n < categoryArray.length ; n++){
			if(categoryArray[n].equals("")){
				
			} else {
				category.add(categoryArray[n]);
			}
		}
		
		String[] tagArray = request.getParameterValues("tag[]");
		for(int n = 0 ; n < tagArray.length ; n++){
			if(tagArray[n].equals("")){
				
			} else {
				tag.add(tagArray[n]);
			}
		}
		
		userDesc = request.getParameter("userDesc");
		supDesc = request.getParameter("supDesc");
		
		for(int n = 1 ; n<=10 ; n++){
			if(request.getParameter("oikey"+n).equals("")){
				
			} else {
				otherInfo.put(request.getParameter("oikey"+n), request.getParameter("oivalue"+n));
			}
		}
		
		
		//insert author_profiles
		//insert mongo
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
		
		MongoCollection<Document> coll = database.getCollection("author_profiles");
		
		Document document = new Document();
		document.append("platform", platform);
		document.append("authorType", authorType);
		document.append("author", author);
		document.append("profileImg", profileImg);
		document.append("startDate", startDate);
		document.append("follower", follower);
		document.append("following", follwing);
		
		//category 담기
		Document categoryDoc = new Document();
		for(int n = 0 ; n < category.size() ; n++){
			categoryDoc.append(""+(n+1), category.get(n));
		}
		document.append("category", categoryDoc);
		
		//tag 담기
		Document tagDoc = new Document();
		for(int n = 0 ; n < tag.size() ; n++){
			tagDoc.append(""+(n+1), tag.get(n));
		}
		document.append("tag", tagDoc);
		
		document.append("userDesc", userDesc);
		document.append("supDesc", supDesc);
		
		//otherinfo
		Document otherinfoDoc = new Document();
		for(String key : otherInfo.keySet()){
			otherinfoDoc.append(key, otherInfo.get(key));
		}
		document.append("otherInfo", otherinfoDoc);
		
		document.append("createdAt", createdAt);
		document.append("updatedAt", updatedAt);
		
		coll.insertOne(document);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/adminAuthor");
		rd.forward(request, response);
	}

}
