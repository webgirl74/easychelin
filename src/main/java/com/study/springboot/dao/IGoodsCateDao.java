package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.GoodsCateDto;

@Mapper
public interface IGoodsCateDao {

	// 카테고리 등록
	public int addCate(String goodsCate1, String goodsCate2_name, String goodsCate2_noname1, String goodsCate2_noname2);
	
	// 카테고리 목록
	public List<GoodsCateDto> goodsCate_list();
	
	// 카테고리 보기
	public GoodsCateDto viewCate(int goodsCate2_idx);
		
	// 카테고리 수정
    public int updateCate(String goodsCate1, int goodsCate2_idx, String goodsCate2_name);
    
	// 카테고리 삭제
	public int deleteCate(int goodsCate2_idx);
}
