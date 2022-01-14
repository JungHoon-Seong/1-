package com.company.board.model.vo;

import org.springframework.stereotype.Component;

@Component

//BO_POSTNO      NOT NULL NUMBER(11)     
//BO_USERID               VARCHAR2(20)   
//BO_USERNO               NUMBER(11)     
//BO_POSTTITLE   NOT NULL VARCHAR2(1000) 
//BO_POSTCONTENT NOT NULL VARCHAR2(3000) 
//BO_POSTVIEW    NOT NULL NUMBER(11)     
//BO_CREATEDATE  NOT NULL DATE           
//BO_UPDATEDATE  NOT NULL DATE      

//BI_IMGSRC           VARCHAR2(2000) 
//BF_FILESRC          VARCHAR2(2000)

public class Board {

	private int bo_postNo;
	private String bo_userId;
	private String bo_userNo;
	private String bo_postTitle;
	private String bo_postContent;
	private int bo_postView;
	private String bo_createDate;
	private String bo_updateDate;
	private String bi_imgsrc;
	private String bf_filesrc;
	
	
	public Board() {
		super();
	}
	

	public Board(String userId, String title, String content) {
		this.bo_userId = userId;
		
		this.bo_postTitle = title;
		this.bo_postContent = content;
	}

	public Board(String title, String content) {
		this.bo_postTitle = title;
		this.bo_postContent = content;
	}
			
	public Board(String title, String content, String imgsrc, String filesrc) {
		this.bo_postTitle = title;
		this.bo_postContent = content;
		this.bi_imgsrc = imgsrc;
		this.bf_filesrc = filesrc;
	}


	public Board(String userId, String title, String content, String imgsrc, String filesrc) {
		this.bo_userId = userId;
		this.bo_postTitle = title;
		this.bo_postContent = content;
		this.bi_imgsrc = imgsrc;
		this.bf_filesrc = filesrc;
	}
	
	
	@Override
	public String toString() {
		return "Board [bo_postNo=" + bo_postNo + ", bo_userId=" + bo_userId + ", bo_userNo=" + bo_userNo
				+ ", bo_postTitle=" + bo_postTitle + ", bo_postContent=" + bo_postContent + ", bo_postView="
				+ bo_postView + ", bo_createDate=" + bo_createDate + ", bo_updateDate=" + bo_updateDate + ", bi_imgsrc="
				+ bi_imgsrc + ", bf_filesrc=" + bf_filesrc + "]";
	}

	public int getBo_postNo() {
		return bo_postNo;
	}


	public void setBo_postNo(int bo_postNo) {
		this.bo_postNo = bo_postNo;
	}


	public String getBo_userId() {
		return bo_userId;
	}


	public void setBo_userId(String bo_userId) {
		this.bo_userId = bo_userId;
	}


	public String getBo_userNo() {
		return bo_userNo;
	}


	public void setBo_userNo(String bo_userNo) {
		this.bo_userNo = bo_userNo;
	}


	public String getBo_postTitle() {
		return bo_postTitle;
	}


	public void setBo_postTitle(String bo_postTitle) {
		this.bo_postTitle = bo_postTitle;
	}


	public String getBo_postContent() {
		return bo_postContent;
	}


	public void setBo_postContent(String bo_postContent) {
		this.bo_postContent = bo_postContent;
	}


	public int getBo_postView() {
		return bo_postView;
	}


	public void setBo_postView(int bo_postView) {
		this.bo_postView = bo_postView;
	}


	public String getBo_createDate() {
		return bo_createDate;
	}


	public void setBo_createDate(String bo_createDate) {
		this.bo_createDate = bo_createDate;
	}


	public String getBo_updateDate() {
		return bo_updateDate;
	}


	public void setBo_updateDate(String bo_updateDate) {
		this.bo_updateDate = bo_updateDate;
	}


	public String getBi_imgsrc() {
		return bi_imgsrc;
	}


	public void setBi_imgsrc(String bi_imgsrc) {
		this.bi_imgsrc = bi_imgsrc;
	}


	public String getBf_filesrc() {
		return bf_filesrc;
	}


	public void setBf_filesrc(String bf_filesrc) {
		this.bf_filesrc = bf_filesrc;
	}

	
	
}
