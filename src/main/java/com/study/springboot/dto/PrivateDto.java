package com.study.springboot.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;

@AllArgsConstructor  //모든 필드값을 파라미터로 받는 생성자
@Data
public class PrivateDto {
	
	public PrivateDto() {
		// TODO Auto-generated constructor stub
	}
	@NonNull  //널을 허용하지 않는 필드
	private int easyPolicy_idx;
	private String easyPolicy_title;
	private String easyPolicy_content;
	private Date easyPolicy_date;
	private String easyPolicy_noname;

}