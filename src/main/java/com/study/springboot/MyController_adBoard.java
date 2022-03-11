package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_adBoard {

	
	//공지사항목록
	@RequestMapping("/admin/board/admin_noticeList")
	public String admin_noticeList(Model model) {
		model.addAttribute("adminMainPage","./board/admin_noticeList.jsp");
		return "/admin/admin_index";
	}
	
	//공지사항보기
	@RequestMapping("/admin/board/admin_noticeView")
	public String admin_noticeView(Model model) {
		model.addAttribute("adminMainPage","./board/admin_noticeView.jsp");
		return "/admin/admin_index";
	}
	
	//공지사항글쓰기
	@RequestMapping("/admin/board/admin_noticeWrite")
	public String admin_noticeWrite(Model model) {
		model.addAttribute("adminMainPage","./board/admin_noticeWrite.jsp");
		return "/admin/admin_index";
	}
	
/*	
	//상품문의
	@RequestMapping("/admin/board/admin_goodsQnaList")
	public String admin_goodsQnaList(Model model) {
		model.addAttribute("adminMainPage","./board/admin_goodsQnaList.jsp");
		return "/admin/admin_index";
	}
	
	//1:1문의
	@RequestMapping("/admin/board/admin_qnaList")
	public String admin_qnaList(Model model) {
		model.addAttribute("adminMainPage","./board/admin_qnaList.jsp");
		return "/admin/admin_index";
	}
	
	//상품평
	@RequestMapping("/admin/board/admin_reviewList")
	public String admin_reviewList(Model model) {
		model.addAttribute("adminMainPage","./board/admin_reviewList.jsp");
		return "/admin/admin_index";
	}
	
	//자주하는 질문
	@RequestMapping("/admin/board/admin_faqList")
	public String admin_faqList(Model model) {
		model.addAttribute("adminMainPage","./board/admin_faqList.jsp");
		return "/admin/admin_index";
	}
	
	//이벤트
	@RequestMapping("/admin/board/admin_eventList")
	public String admin_eventList(Model model) {
		model.addAttribute("adminMainPage","./board/admin_eventList.jsp");
		return "/admin/admin_index";
	}

*/
}
