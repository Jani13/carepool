package com.care.mvc.message.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReceiveMessageImg {
	
	private int rec_img_no;
	
	private String rec_img_path;
	
	private String rec_img_name_org;
	
	private String rec_img_name_sav;
	
	private int rec_no;
}
