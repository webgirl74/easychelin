package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IGoodsCateDao;
import com.study.springboot.dto.GoodsCateDto;

@Component
public class GoodsCateService {

	@Autowired
	IGoodsCateDao goodsCateDao;
	
	// 카테고리 등록
	public int addCate(String goodsCate1, String goodsCate2_name, String goodsCate2_noname1, String goodsCate2_noname2) {
		
		int result = goodsCateDao.addCate(goodsCate1, goodsCate2_name, goodsCate2_noname1, goodsCate2_noname2);
	
		return result;
	}
	
	// 카테고리 리스트 보기
	public List<GoodsCateDto> goodsCate_list() {
		List<GoodsCateDto> goodsCate_list = goodsCateDao.goodsCate_list();
		return goodsCate_list;
    }
}
