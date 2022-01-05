package com.company.admin.model.vo;

import org.springframework.stereotype.Component;

//AD_ADMINID  NOT NULL VARCHAR2(20) 
//AD_ADMINPWD NOT NULL VARCHAR2(20) 


@Component
public class Admin {
	private String ad_adminId;
	private String ad_adminPwd;
	
		
	public Admin() {
		super();
	}

	public Admin(String ad_adminId, String ad_adminPwd) {
		super();
		this.ad_adminId = ad_adminId;
		this.ad_adminPwd = ad_adminPwd;
	}

	@Override
	public String toString() {
		return "Admin [ad_adminId=" + ad_adminId + ", ad_adminPwd=" + ad_adminPwd + "]";
	}
	
	public String getAd_adminId() {
		return ad_adminId;
	}
	public void setAd_adminId(String ad_adminId) {
		this.ad_adminId = ad_adminId;
	}
	public String getAd_adminPwd() {
		return ad_adminPwd;
	}
	public void setAd_adminPwd(String ad_adminPwd) {
		this.ad_adminPwd = ad_adminPwd;
	}
	
	
	
	
	
}
