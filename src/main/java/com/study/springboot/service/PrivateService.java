package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IPrivateDao;
import com.study.springboot.dto.PrivateDto;
import com.study.springboot.dto.TermsDto;

@Component
public class PrivateService {
	
	@Autowired
	private IPrivateDao privateDao;
	
	//목록
	public List<PrivateDto> private_list(){
		List<PrivateDto> private_list = privateDao.private_list();
		return private_list;
	}	
	
	//단건
	public PrivateDto private_content(String easyPolicy_idx) {
		PrivateDto private_dto = privateDao.private_content( easyPolicy_idx );
		return private_dto;
	}
	
	//약관등록
	public int private_write(PrivateDto dto) {
		int result = privateDao.private_write(dto);
		return result;
	}
	
	//약관수정
	public int private_modify(PrivateDto dto) {
		int result = privateDao.private_modify(dto);
		return result;
	}
	
	//약관삭제
	public int private_delete(String easyPolicy_idx) {
		int result = privateDao.private_delete(easyPolicy_idx);
		return result;
	}

}
