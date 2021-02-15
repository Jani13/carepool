package com.care.mvc.message.model.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SendMessage {

	private int send_no;
	
	private int rowNum;
	
	private String rec_id;
	
	private String send_body;
	
	private Date send_date;
	
	private String Mem_id;
	
	private String status;
	
	private List<SendMessageImg> imgs;
}
