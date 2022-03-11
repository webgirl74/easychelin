package com.study.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.dao.IGoodsDao;
import com.study.springboot.dto.GoodsDto;

@Controller
public class MyController_khr {
	
	@Autowired
	IGoodsDao goodsDao;
	
	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main( Model model) {
		
		model.addAttribute("mainPage", "main.jsp");
		 		
		return "index";
	}
	
	@RequestMapping("/goods/goodsBestList")
	public String goodsBestList( HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "goods/goodsBestList.jsp");
		
		return "index";
	}
	
	@RequestMapping("/goods/goodsList")
	public String goodsList( HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "goods/goodsList.jsp");
		
		return "index";
	}
	
	@RequestMapping("/goods/goodsNewList")
	public String goodsNewList( HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "goods/goodsNewList.jsp");
		
		return "index";
	}
	
	@RequestMapping("/goods/goodsView")
	public String goodsView( @RequestParam(value="goods_idx", required=false) String goods_idx,
							 HttpServletRequest request, Model model) {
		
		GoodsDto dto = goodsDao.GoodsDetail( goods_idx );
		model.addAttribute("dto", dto);
		
		model.addAttribute("mainPage", "goods/goodsView.jsp");
		
		return "index";
	}
}
