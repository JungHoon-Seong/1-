package com.company.board.model.vo;

import org.springframework.stereotype.Component;

@Component

//BO_POSTNO      NOT NULL NUMBER(11)    
//MM_USERID               VARCHAR2(20)  
//BO_POSTTITLE   NOT NULL VARCHAR2(255) 
//BO_POSTCONTENT NOT NULL VARCHAR2(255) 
//BO_POSTVIEW    NOT NULL NUMBER(11)  

//BI_IMGSRC           VARCHAR2(2000) 
//BI_FILESRC          VARCHAR2(2000)

public class Board {

	private int bo_postNo;
	private String mm_userId;
	private String bo_postTitle;
	private String bo_postContent;
	private int bo_postView;
	private String bo_writtenDate;
	private String bo_modificationDate;
	private String bi_imgsrc;
	private String bi_filesrc;
	
	
	public Board() {
		super();
	}
	

	public Board(String userId, String title, String content) {
		this.mm_userId = userId;
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
		this.bi_filesrc = filesrc;
	}


	public Board(String userId, String title, String content, String imgsrc, String filesrc) {
		this.mm_userId = userId;
		this.bo_postTitle = title;
		this.bo_postContent = content;
		this.bi_imgsrc = imgsrc;
		this.bi_filesrc = filesrc;
	}

	@Override
	public String toString() {
		return "Board [bo_postNo=" + bo_postNo + ", mm_userId=" + mm_userId + ", bo_postTitle=" + bo_postTitle
				+ ", bo_postContent=" + bo_postContent + ", bo_postView=" + bo_postView + ", bo_writtenDate="
				+ bo_writtenDate + ", bo_modificationDate=" + bo_modificationDate + ", bi_imgsrc=" + bi_imgsrc
				+ ", bi_filesrc=" + bi_filesrc + "]";
	}
	
	public int getBo_postNo() {
		return bo_postNo;
	}


	public void setBo_postNo(int bo_postNo) {
		this.bo_postNo = bo_postNo;
	}


	public String getMm_userId() {
		return mm_userId;
	}


	public void setMm_userId(String mm_userId) {
		this.mm_userId = mm_userId;
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


	public String getBo_writtenDate() {
		return bo_writtenDate;
	}


	public void setBo_writtenDate(String bo_writtenDate) {
		this.bo_writtenDate = bo_writtenDate;
	}


	public String getBo_modificationDate() {
		return bo_modificationDate;
	}


	public void setBo_modificationDate(String bo_modificationDate) {
		this.bo_modificationDate = bo_modificationDate;
	}


	public String getBi_imgsrc() {
		return bi_imgsrc;
	}


	public void setBi_imgsrc(String bi_imgsrc) {
		this.bi_imgsrc = bi_imgsrc;
	}


	public String getBi_filesrc() {
		return bi_filesrc;
	}


	public void setBi_filesrc(String bi_filesrc) {
		this.bi_filesrc = bi_filesrc;
	}
	
}
