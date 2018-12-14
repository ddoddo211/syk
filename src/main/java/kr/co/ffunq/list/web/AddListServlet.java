package kr.co.ffunq.list.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClientSettings;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import kr.co.ffunq.list.model.ListVo;

@MultipartConfig(maxFileSize=1024*1024*5, maxRequestSize=1024*1024*5*5)
@WebServlet("/addList")
public class AddListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 목록에 data insert
		
		//ObjectId id;
		String platform ;
		String by ;
		String author ;
		String title ;
		String content ;
		String img ;
		String vid ;
		String type ;
		Date date = new Date();
		int like ;
		int comment ;
		String directLink ;
		Date createdAt ;
		Date updatedAt ;
		boolean show = true;
		String authorType ;
		String insertMethod ;
		
		platform = request.getParameter("platform");
		by =request.getParameter("by");
		author = request.getParameter("author");
		title = request.getParameter("title");
		content = request.getParameter("content");
		img = request.getParameter("imgurl");
		type=request.getParameter("type");
		like = Integer.parseInt(request.getParameter("like"));
		comment = Integer.parseInt(request.getParameter("comment"));
		directLink = request.getParameter("directLink");
		
		if(request.getParameter("show").equals("true")){
			show = true;
		} else if(request.getParameter("show").equals("false")){
			show = false;
		}
		
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
		
		createdAt = today;
		updatedAt = today;
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
		String tempDate = request.getParameter("date");
		try {
			date = sdf2.parse(tempDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		authorType = "user";
		insertMethod = "manual";
		
		
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
		
		MongoCollection<Document> coll = database.getCollection("contents");
		
		Document document = new Document();
		document.append("platform", platform);
		document.append("by", by);
		document.append("author",author);
		document.append("title",title);
		document.append("content",content);
		document.append("type",type);
		document.append("date",date);
		document.append("like",like);
		document.append("comment",comment);
		document.append("directLink",directLink);
		document.append("createdAt",createdAt);
		document.append("updatedAt",updatedAt);
		document.append("show",show);
		document.append("authorType",authorType);
		document.append("insertMethod",insertMethod);
		
		
		//attach 큰그릇 만들기
		BasicDBObject attach = new BasicDBObject();
		
		// attach 에다가 1, 2 넣기
		attach.put("1", "{\"type\":\"img\", \"data\":\""+img+"\"");
		
		document.append("attach",attach);

		//파일 첨부 있을떄 처리
		if(request.getPart("imgpath")!=null){
			Part part = request.getPart("imgpath");
			String contentDisposition = part.getHeader("Content-disposition");
			String fileName = "";
			String imgpath="";
			
			int indexFilename = contentDisposition.indexOf("filename");
			int indexEnd = contentDisposition.lastIndexOf("\"");
			fileName = contentDisposition.substring(indexFilename+10,indexEnd);
			imgpath=fileName;
			
			//C:\myTemp\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\syk\imgupload
			//상대경로가 잘안잡힘 << 개선필요
			part.write("/imgupload/"+imgpath);
			part.delete();
			
		}
				
		
		coll.insertOne(document);
		
		RequestDispatcher rd = request.getRequestDispatcher("/admin");
		rd.forward(request, response);
	
	}

}
