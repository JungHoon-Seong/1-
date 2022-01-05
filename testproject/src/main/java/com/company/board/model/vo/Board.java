package com.company.board.model.vo;

import org.springframework.stereotype.Component;

@Component

//BO_POSTNO      NOT NULL NUMBER(11)    
//MM_USERID               VARCHAR2(20)  
//BO_POSTTITLE   NOT NULL VARCHAR2(255) 
//BO_POSTCONTENT NOT NULL VARCHAR2(255) 
//BO_POSTVIEW    NOT NULL NUMBER(11)  
public class Board {

	private int bo_postNo;
	private String mm_userId;
	private String bo_postTitle;
	private String bo_postContent;
	private int bo_postView;
	private String bo_writtenDate;
	
	
	
	
	
	
	public Board() {
		super();
	}


	public Board(int bo_postNo, String mm_userId, String bo_postTitle, String bo_postContent, int bo_postView,
			String bo_writtenDate) {
		super();
		this.bo_postNo = bo_postNo;
		this.mm_userId = mm_userId;
		this.bo_postTitle = bo_postTitle;
		this.bo_postContent = bo_postContent;
		this.bo_postView = bo_postView;
		this.bo_writtenDate = bo_writtenDate;
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
	
	
	
}
