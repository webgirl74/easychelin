package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.study.springboot.dto.CartDTO;

@Mapper
public interface ICartDao {
	
	/* 카트 추가 */
	public int addCart(CartDTO cart) throws Exception; //장바구니의 row 추가 (1: 반환 성공, 0:반환 실패)
 	
	/* 카트 삭제 */
	public int deleteCart(int cartcart_idx); //
	
	/* 카트 수량 수정 */
	public int modifyCount(CartDTO cart);
	
	/* 카트 목록 */
	public List<CartDTO> getCart(String user_idx);	
	
	/* 카트 확인 */
	public CartDTO checkCart(CartDTO cart);
	
}