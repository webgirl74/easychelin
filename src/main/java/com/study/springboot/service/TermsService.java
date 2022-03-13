package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.ITermsDao;
import com.study.springboot.dto.TermsDto;

@Component
public class TermsService {
	
	@Autowired
	private ITermsDao termsDao;
	
	// 목록
	public List<TermsDto> terms_list(){		
		List<TermsDto> terms_list = termsDao.terms_list();
		return terms_list;		
	}
	
	//단건
	public TermsDto terms_content(String terms_idx) {
		TermsDto terms_dto = termsDao.terms_content( terms_idx );
		return terms_dto;
	}
	
	//약관등록
	public int terms_write(TermsDto dto) {
		int result = termsDao.terms_write(dto);
		return result;
	}
	
	//약관수정
	public int terms_modify(TermsDto dto) {
		int result = termsDao.terms_modify(dto);
		return result;
	}
	
	//약관삭제
	public int terms_delete(String terms_idx) {
		int result = termsDao.terms_delete(terms_idx);
		return result;
	}

}
