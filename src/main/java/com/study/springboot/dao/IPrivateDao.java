package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.PrivateDto;
import com.study.springboot.dto.TermsDto;

@Mapper
public interface IPrivateDao {
	
	public List<PrivateDto> private_list();
	public PrivateDto private_content( String easyPolicy_idx );  	//단건용
	public int private_write(PrivateDto dto);  //등록
	public int private_delete(String easyPolicy_idx);  //삭제
	public int private_modify(PrivateDto dto);

}
