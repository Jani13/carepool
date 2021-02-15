package com.care.mvc.care.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CareImage {
	private int imgNo;
	
	private int careNo;
	
	private Date imgDate;
	
	private String imgPath;
	
	private String imgNameOrg;
	
	private String imgNameSav;
}
