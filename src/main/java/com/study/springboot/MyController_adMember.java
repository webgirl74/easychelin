package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_adMember {
	
	//관리자 회원목록
		@RequestMapping("/admin/member/admin_memberList")
		public String admin_memberList(Model model) {
			model.addAttribute("adminMainPage","./member/admin_memberList.jsp");
			return "/admin/admin_index";
		}
		
		//관리자 적립금 추가/삭제 팝업창
		@RequestMapping("/admin/member/admin_pop_point")
		public String admin_pop_point() {
			return "/admin/member/admin_pop_point";
		}
		
		//관리자 회원적립금목록 팝업창
		@RequestMapping("/admin/member/admin_pop_memberPoint")
		public String admin_pop_memberPoint() {
			return "/admin/member/admin_pop_memberPoint";
		}
		
		// 회원주문목록 팝업창
		@RequestMapping("/admin/member/admin_pop_memberBuy")
		public String admin_pop_memberBuy() {
			return "/admin/member/admin_pop_memberBuy";
		}
		
		//관리자 회원상세보기
		@RequestMapping("/admin/member/admin_memberView")
		public String admin_memberView(Model model) {
			model.addAttribute("adminMainPage","./member/admin_memberView.jsp");
			return "/admin/admin_index";
		}
		
		//관리자 탈퇴회원목록
			@RequestMapping("/admin/member/admin_memberOut")
			public String admin_memberOut(Model model) {
				model.addAttribute("adminMainPage","./member/admin_memberOut.jsp");
				return "/admin/admin_index";
		}
			
		//관리자 적립금내역
		@RequestMapping("/admin/member/admin_easyPointList")
		public String admin_easyPointList(Model model) {
			model.addAttribute("adminMainPage","./member/admin_easyPointList.jsp");
			return "/admin/admin_index";
		}

}
