package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_adInfo {
	
	//관리자 약관관리
		@RequestMapping("/admin/info/admin_infoAgreement")
		public String admin_infoAgreement(Model model) {
			model.addAttribute("adminMainPage","./info/admin_infoAgreement.jsp");
			return "/admin/admin_index";
		}	
		
		//관리자 정책관리
		@RequestMapping("/admin/info/admin_infoPrivate")
		public String admin_infoPrivate(Model model) {
			model.addAttribute("adminMainPage","./info/admin_infoPrivate.jsp");
			return "/admin/admin_index";
		}	

}
