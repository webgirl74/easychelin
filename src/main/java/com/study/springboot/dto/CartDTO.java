package com.study.springboot.dto;

import lombok.Data;

@Data
public class CartDTO {
	
	private int cart_idx; // 장바구니 인덱스
	private int user_idx; // 회원 인덱스
	private int goods_idx; // 회원이 장바구니에 담은 상품의 인덱스
	private String cart_img; // 상품 이미지 
	private String cart_brand; // 상품 브랜드
	private String cart_name; // 상품 이름
	private int cart_pcs; // 상품 수량
	private int cart_subPrice; // 상품별 단가	
	private String cart_noname1; //여분 필드
	private String cart_noname2; //여분 필드
	
	
	public CartDTO(int cart_idx, int user_idx, int goods_idx, String cart_img, String cart_brand, String cart_name,
			int cart_pcs, int cart_subPrice, String cart_noname1, String cart_noname2) {
		super();
		this.cart_idx = cart_idx;
		this.user_idx = user_idx;
		this.goods_idx = goods_idx;
		this.cart_img = cart_img;
		this.cart_brand = cart_brand;
		this.cart_name = cart_name;
		this.cart_pcs = cart_pcs;
		this.cart_subPrice = cart_subPrice;
		this.cart_noname1 = cart_noname1;
		this.cart_noname2 = cart_noname2;
	}
	
	

}



