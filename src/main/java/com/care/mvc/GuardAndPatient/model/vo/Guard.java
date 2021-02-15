package com.care.mvc.GuardAndPatient.model.vo;

import com.care.mvc.care.model.vo.Care;
import com.care.mvc.care.model.vo.CareImage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Guard {

	private int guard_no;
	
	private String guard_gen;
	
	private String guard_pat;
	
	private String memId;
	
	private String guardName;
}
