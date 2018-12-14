package kr.co.ffunq.list.model;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.bson.Document;
import org.bson.types.ObjectId;

public class AuthorVo {
	
	ObjectId _id;
	String platform;
	String authorType;
	String author;
	String profileImg;
	Date startDate;
	int follower;
	int follwing;
	List<String> category;
	List<String> tag;
	String userDesc;
	String supDesc;
	Map<String,String> otherInfo;
	Date createdAt;
	Date updatedAt;
	
	
	
	
	@Override
	public String toString() {
		return "AuthorVo [_id=" + _id + ", platform=" + platform
				+ ", authorType=" + authorType + ", author=" + author
				+ ", profileImg=" + profileImg + ", startDate=" + startDate
				+ ", follower=" + follower + ", follwing=" + follwing
				+ ", category=" + category + ", tag=" + tag + ", userDesc="
				+ userDesc + ", supDesc=" + supDesc + ", otherInfo="
				+ otherInfo + ", createdAt=" + createdAt + ", updatedAt="
				+ updatedAt + "]";
	}
	public ObjectId get_id() {
		return _id;
	}
	public void set_id(ObjectId _id) {
		this._id = _id;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getAuthorType() {
		return authorType;
	}
	public void setAuthorType(String authorType) {
		this.authorType = authorType;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public int getFollower() {
		return follower;
	}
	public void setFollower(int follower) {
		this.follower = follower;
	}
	public int getFollwing() {
		return follwing;
	}
	public void setFollwing(int follwing) {
		this.follwing = follwing;
	}
	public List<String> getCategory() {
		return category;
	}
	public void setCategory(List<String> category) {
		this.category = category;
	}
	public List<String> getTag() {
		return tag;
	}
	public void setTag(List<String> tag) {
		this.tag = tag;
	}
	public String getUserDesc() {
		return userDesc;
	}
	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}
	public String getSupDesc() {
		return supDesc;
	}
	public void setSupDesc(String supDesc) {
		this.supDesc = supDesc;
	}
	public Map<String,String> getOtherInfo() {
		return otherInfo;
	}
	public void setOtherInfo(Map<String,String> otherInfo) {
		this.otherInfo = otherInfo;
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
	
	
	
	

}
