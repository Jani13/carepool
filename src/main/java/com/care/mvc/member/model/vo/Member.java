package com.care.mvc.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String memId;
	
	private String memRole;
	
	private String memName;
	
	private String memPwd;
	
	private String memEmail;
	
	private String memPhone;
	
	private String memAddr;
	
	private String memBirth;
	
	private Date createDate;
	
	private Date modifyDate;
	
	private String status;
}
