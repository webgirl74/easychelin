package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.TermsDto;

@Mapper
public interface ITermsDao {
	
	public List<TermsDto> terms_list(); //목록용
	public TermsDto terms_content( String terms_idx );  	//단건용
	public int terms_write(TermsDto dto);  //등록
	public int terms_delete(String terms_idx);  //삭제
//	public int terms_modify(String terms_idx, String terms_title, String terms_content, String terms_opt, String terms_noname );  //수정
	public int terms_modify(TermsDto dto);

}
