package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsCateDto {
	private int goodsCate1;
	private int goodsCate2_idx;
	private String goodsCate2_name;
	private Date goodsCate2_date;
	private String goodsCate2_noname1;
	private String goodsCate2_noname2;
	
	public GoodsCateDto(int goodsCate1, int goodsCate2_idx, String goodsCate2_name, Date goodsCate2_date, 
					    String goodsCate2_noname1, String goodsCate2_noname2) {
		super();
		this.goodsCate1 = goodsCate1;
		this.goodsCate2_idx = goodsCate2_idx;
		this.goodsCate2_name = goodsCate2_name;
		this.goodsCate2_date = goodsCate2_date;
		this.goodsCate2_noname1 = goodsCate2_noname1;
		this.goodsCate2_noname2 = goodsCate2_noname2;
	}
}
