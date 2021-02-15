package com.care.mvc.message.model.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReceiveMessage {

	private int rec_no;
	
	private int rowNum;
	
	private String send_id; //보낸사람
	
	private String rec_body;
	
	private Date rec_date;
	
	private String Mem_id;
	
	private String status;
	
	private List<ReceiveMessageImg> imgs;
}
