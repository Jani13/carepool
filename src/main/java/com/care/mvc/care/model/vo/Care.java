package com.care.mvc.care.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Care {
	private int careNo;
	
	private String careGen;
	
	private String careLicense;
	
	private String careYears;
	
	private String careHistory;
	
	private String carePlus;
	
	private String careTime;
	
	private String carePlace;
	
	private String careSal;
	
	private String careIntro;

	private String memId;
	
	private String memName;
	
	private String memBirth;
	
	private CareImage careImg;
}
