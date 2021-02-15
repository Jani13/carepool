package com.care.mvc.GuardAndPatient.model.vo;

import com.care.mvc.care.model.vo.Care;
import com.care.mvc.care.model.vo.CareImage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patient {
	
	private int pat_no;
	
	private int guard_no;
	
	private String pat_place;
	
	private String pat_period;
	
	private String pat_hop_time;
	
	private String pat_name;
	
	private int pat_age;
	
	private String pat_gen;
	
	private int pat_kg;
	
	private String pat_infect;
	
	private String pat_grade;
	
	private String pat_sanit;
	
	private String pat_paral;
	
	private String pat_move;
	
	private String pat_bed;

	private String pat_cogdis;
	
	private String pat_bathroom;
	
	private String pat_bowel_mn;
	
	private String pat_ostomy;
	
	private String pat_help_eat;
	
	private String pat_suction;
	
	private String pat_guard_gen;

	private String pat_etc;
}
