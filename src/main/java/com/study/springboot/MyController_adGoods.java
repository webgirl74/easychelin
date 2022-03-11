package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_adGoods {
	
	//상품목록
	@RequestMapping("/admin/goods/admin_goodsList")
	public String admin_goodsList(Model model) {
		model.addAttribute("adminMainPage","./goods/admin_goodsList.jsp");
		return "/admin/admin_index";
	}
	
	//상품등록
	@RequestMapping("/admin/goods/admin_goodsWrite")
	public String admin_goodsWrite(Model model) {
		model.addAttribute("adminMainPage","./goods/admin_goodsWrite.jsp");
		return "/admin/admin_index";
	}
	
	//상품상세보기
	@RequestMapping("/admin/goods/admin_goodsView")
	public String admin_goodsView(Model model) {
		model.addAttribute("adminMainPage","./goods/admin_goodsView.jsp");
		return "/admin/admin_index";
	}
	
	//카테고리목록
	@RequestMapping("/admin/goods/admin_cateList")
	public String admin_cateList(Model model) {
		model.addAttribute("adminMainPage","./goods/admin_cateList.jsp");
		return "/admin/admin_index";
	}
	
	//카테고리등록
	@RequestMapping("/admin/goods/admin_cateWrite")
	public String admin_cateWrite(Model model) {
		model.addAttribute("adminMainPage","./goods/admin_cateWrite.jsp");
		return "/admin/admin_index";
	}

}
