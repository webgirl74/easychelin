package com.study.springboot.dto;

import java.util.Date;

import org.springframework.lang.Nullable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;

@AllArgsConstructor  //모든 필드값을 파라미터로 받는 생성자
@Data  //기본생성자, Getter/Setter를 만들어줌.
public class TermsDto {
	
	public TermsDto() {
		// TODO Auto-generated constructor stub
	}
	@NonNull  //널을 허용하지 않는 필드
	private int terms_idx;
	private String terms_title;
	private String terms_content;
	private String terms_opt;
	private Date terms_date;
	private String terms_noname;
	
}
