package com.company.member.model.vo;

import org.springframework.stereotype.Component;

//MM_USERID         NOT NULL VARCHAR2(20) 
//MM_USERPWD        NOT NULL VARCHAR2(20) 
//MM_USERENROLLDATE NOT NULL DATE         
//MM_USEREMAIL      NOT NULL VARCHAR2(20) 

@Component
public class Member {

	private String mm_userId;
	private String mm_userPwd;
	private String mm_enrollDate; //to_char ,to_date 사용해서 변경
	private String mm_userEmail;
			
	public Member() {
		super();
	}

	public Member(String mm_userId, String mm_userPwd, String mm_enrollDate, String mm_userEmail) {
		super();
		this.mm_userId = mm_userId;
		this.mm_userPwd = mm_userPwd;
		this.mm_enrollDate = mm_enrollDate;
		this.mm_userEmail = mm_userEmail;
	}

	public Member(String id, String pwd) {
		this.mm_userId = id;
		this.mm_userPwd = pwd;
	}

	@Override
	public String toString() {
		return "member [mm_userId=" + mm_userId + ", mm_userPwd=" + mm_userPwd + ", mm_enrollDate=" + mm_enrollDate
				+ ", mm_userEmail=" + mm_userEmail + "]";
	}
	
	public String getMm_userId() {
		return mm_userId;
	}
	public void setMm_userId(String mm_userId) {
		this.mm_userId = mm_userId;
	}
	public String getMm_userPwd() {
		return mm_userPwd;
	}
	public void setMm_userPwd(String mm_userPwd) {
		this.mm_userPwd = mm_userPwd;
	}
	public String getMm_enrollDate() {
		return mm_enrollDate;
	}
	public void setMm_enrollDate(String mm_enrollDate) {
		this.mm_enrollDate = mm_enrollDate;
	}
	public String getMm_userEmail() {
		return mm_userEmail;
	}
	public void setMm_userEmail(String mm_userEmail) {
		this.mm_userEmail = mm_userEmail;
	}
	
	
}
