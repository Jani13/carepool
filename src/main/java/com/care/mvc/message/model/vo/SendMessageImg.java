package com.care.mvc.message.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SendMessageImg {
	private int send_img_no;
	
	private String send_img_path;
	
	private String send_img_name_org;
	
	private String send_img_name_sav;
	
	private int send_no;
}
