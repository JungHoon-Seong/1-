package com.company.reply.model.vo;


//CB_COMMENTNO     NOT NULL NUMBER(11)     
//CB_POSTNO                 NUMBER(11)     
//CB_COMMENT       NOT NULL VARCHAR2(3000) 
//CB_COMMENTUSERID NOT NULL VARCHAR2(20)   
//CB_DELETEAT      NOT NULL CHAR(1)        
//CB_CREATEDATE    NOT NULL DATE           
//CB_UPDATEDATE    NOT NULL DATE           
public class Reply {

	private int cb_commentNo;
	private int cb_postNo;
	private String cb_comment;
	private String cb_commentUserId;
	private char cb_deleteAt;
	private String cb_createDate;
	private String cb_updateDate;
		
	public Reply() {
		super();
	}
	
	//생성을 위한 생성자
	public Reply(String userId, int postNo, String content) {
		this.cb_commentUserId = userId;
		this.cb_postNo = postNo;
		this.cb_comment = content;
	}


	//조회를 위한 생성자
	public Reply(int brno) {
		this.cb_postNo = brno;
	}

	//수정을 위한 생성자
	public Reply(int commentNo, String userId, int postNo, String content) {
		this.cb_commentNo = commentNo;
		this.cb_commentUserId = userId;
		this.cb_postNo = postNo;
		this.cb_comment = content;
	}

	//삭제를 위한 생성자
	public Reply(int commentNo, String userId) {
		this.cb_commentNo = commentNo;
		this.cb_commentUserId = userId;
	}

	@Override
	public String toString() {
		return "Reply [cb_commentNo=" + cb_commentNo + ", cb_postNo=" + cb_postNo + ", cb_comment=" + cb_comment
				+ ", cb_commentUserId=" + cb_commentUserId + ", cb_deleteAt=" + cb_deleteAt + ", cb_createDate="
				+ cb_createDate + ", cb_updateDate=" + cb_updateDate + "]";
	}

	public int getCb_commentNo() {
		return cb_commentNo;
	}

	public void setCb_commentNo(int cb_commentNo) {
		this.cb_commentNo = cb_commentNo;
	}

	public int getCb_postNo() {
		return cb_postNo;
	}

	public void setCb_postNo(int cb_postNo) {
		this.cb_postNo = cb_postNo;
	}

	public String getCb_comment() {
		return cb_comment;
	}

	public void setCb_comment(String cb_comment) {
		this.cb_comment = cb_comment;
	}

	public String getCb_commentUserId() {
		return cb_commentUserId;
	}

	public void setCb_commentUserId(String cb_commentUserId) {
		this.cb_commentUserId = cb_commentUserId;
	}

	public char getCb_deleteAt() {
		return cb_deleteAt;
	}

	public void setCb_deleteAt(char cb_deleteAt) {
		this.cb_deleteAt = cb_deleteAt;
	}

	public String getCb_createDate() {
		return cb_createDate;
	}

	public void setCb_createDate(String cb_createDate) {
		this.cb_createDate = cb_createDate;
	}

	public String getCb_updateDate() {
		return cb_updateDate;
	}

	public void setCb_updateDate(String cb_updateDate) {
		this.cb_updateDate = cb_updateDate;
	}

	
	
	
}
