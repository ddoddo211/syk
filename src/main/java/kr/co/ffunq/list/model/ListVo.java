package kr.co.ffunq.list.model;

import java.util.Date;

import org.bson.types.ObjectId;

public class ListVo {
	
	private ObjectId id;
	private String platform ;
	private String by ;
	private String author ;
	private String title ;
	private String content ;
	private String img ;
	private String vid ;
	private String type ;
	private Date date ;
	private int like ;
	private int comment ;
	private String directLink ;
	private Date createdAt ;
	private Date updatedAt ;
	private boolean show ;
	private String authorType ;
	private String insertMethod ;
	
	
	
	
	@Override
	public String toString() {
		return "ListVo [id=" + id + ", platform=" + platform + ", by=" + by
				+ ", author=" + author + ", title=" + title + ", content="
				+ content + ", img=" + img + ", vid=" + vid + ", type=" + type
				+ ", date=" + date + ", like=" + like + ", comment=" + comment
				+ ", directLink=" + directLink + ", createdAt=" + createdAt
				+ ", updatedAt=" + updatedAt + ", show=" + show
				+ ", authorType=" + authorType + ", insertMethod="
				+ insertMethod + "]";
	}
	public ObjectId getId() {
		return id;
	}
	public void setId(ObjectId id) {
		this.id = id;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getBy() {
		return by;
	}
	public void setBy(String by) {
		this.by = by;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getVid() {
		return vid;
	}
	public void setVid(String vid) {
		this.vid = vid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public int getComment() {
		return comment;
	}
	public void setComment(int comment) {
		this.comment = comment;
	}
	public String getDirectLink() {
		return directLink;
	}
	public void setDirectLink(String directLink) {
		this.directLink = directLink;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public boolean isShow() {
		return show;
	}
	public void setShow(boolean show) {
		this.show = show;
	}
	public String getAuthorType() {
		return authorType;
	}
	public void setAuthorType(String authorType) {
		this.authorType = authorType;
	}
	public String getInsertMethod() {
		return insertMethod;
	}
	public void setInsertMethod(String insertMethod) {
		this.insertMethod = insertMethod;
	}
	
	
	
	
	
	
	
	
	

}
