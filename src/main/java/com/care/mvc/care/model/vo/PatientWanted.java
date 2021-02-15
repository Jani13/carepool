package com.care.mvc.care.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PatientWanted {
	private String wantedGrade;
	
	private String wantedGen;
	
	private String wantedAge;
	
	private String wantedIll;
}
