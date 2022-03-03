package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDto {
	private int member_idx;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private int member_email_receive;
	private int member_pw_question;
	private String member_pw_answer; 
	private String member_gender;
	private Date member_birth_date;
	private Date member_join_date;
	
	public MemberDto(int member_idx, String member_id, String member_pw, String member_name, String member_email,
			int member_email_receive, int member_pw_question, String member_pw_answer, String member_gender,
			Date member_birth_date, Date member_join_date) {
		super();
		this.member_idx = member_idx;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_email_receive = member_email_receive;
		this.member_pw_question = member_pw_question;
		this.member_pw_answer = member_pw_answer;
		this.member_gender = member_gender;
		this.member_birth_date = member_birth_date;
		this.member_join_date = member_join_date;
	}
	
}
