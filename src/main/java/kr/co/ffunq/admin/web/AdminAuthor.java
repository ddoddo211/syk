package kr.co.ffunq.admin.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.Block;
import com.mongodb.MongoClientSettings;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import kr.co.ffunq.list.model.AuthorVo;
import kr.co.ffunq.list.model.ListVo;

@WebServlet("/adminAuthor")
public class AdminAuthor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<AuthorVo> authorList;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//DB에 있는 authorlIst 를 불러와서 담을 곳
		authorList = new ArrayList<AuthorVo>();
		
		//author_profiles 를 불러온다
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
		
		coll.find().forEach(addList);
		
		request.setAttribute("authorList", authorList);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/admin/adminAuthor.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request,response);
	}
	
	//변수명 호출시 document 에서 데이터를 읽어와 list에 담는다
    Block<Document> addList = new Block<Document>(){
        @Override
        public void apply(final Document document) {
        	AuthorVo authorVo = new AuthorVo();
        	
        	ObjectId _id = document.getObjectId("_id");
        	String platform = document.getString("platform");
        	String authorType = document.getString("authorType");
        	String author = document.getString("author");
        	String profileImg = document.getString("profileImg");
        	Date startDate = document.getDate("startDate");
        	int follower = document.getInteger("follower");
        	int following = document.getInteger("following");
        	Document category = (Document) document.get("category");
        	Document tag = (Document) document.get("tag");
        	String userDesc = document.getString("userDesc");
        	String supDesc = document.getString("supDesc");
        	Document otherInfo = (Document) document.get("otherInfo");
        	Date createdAt = document.getDate("createdAt");
        	Date updatedAt = document.getDate("updatedAt");
        	
        	authorVo.set_id(_id);
        	authorVo.setPlatform(platform);
        	authorVo.setAuthor(author);
        	authorVo.setAuthorType(authorType);
        	authorVo.setProfileImg(profileImg);
        	authorVo.setStartDate(startDate);
        	authorVo.setFollower(follower);
        	authorVo.setFollwing(following);
        	authorVo.setUserDesc(userDesc);
        	authorVo.setSupDesc(supDesc);
        	authorVo.setCreatedAt(createdAt);
        	authorVo.setUpdatedAt(updatedAt);
        	
        	int categorySize = category.size();
        	List<String> categoryList = new ArrayList<String>();
        	for(int n = 1; n <= categorySize;n++){
        		
        		categoryList.add(category.getString(""+n));
        		
        	}
        	authorVo.setCategory(categoryList);
        	System.out.println(categoryList.toString());
        	
        	int tagSize = tag.size();
        	List<String> tagList = new ArrayList<String>();
        	for(int n = 1;n <=tagSize;n++){
        		
        		tagList.add(tag.getString(""+n));
        		
        	}
        	authorVo.setTag(tagList);
        	
        	//otherInfo key List
        	List<String> otherInfoKeyList = new ArrayList<String>();
        	int otherInfoSize = otherInfo.size();
        	Set<String> otherKey = otherInfo.keySet(); 
       		otherInfoKeyList.addAll(otherKey);
        	
       		Map<String, String> otherInfoMap = new HashMap<String, String>();
       		
       		for(String otherInfoKey : otherInfoKeyList){
       			
       			otherInfoMap.put(otherInfoKey, otherInfo.getString(otherInfoKey));
       			
       		}
       		authorVo.setOtherInfo(otherInfoMap);
       		
       		authorList.add(authorVo);
            
            
        }        
    };

}
