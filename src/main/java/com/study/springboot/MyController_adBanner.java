package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_adBanner {
	
	//배너목록
		@RequestMapping("/admin/banner/admin_banner")
		public String admin_banner(Model model) {
			model.addAttribute("adminMainPage","./banner/admin_banner.jsp");
			return "/admin/admin_index";
		}	
		
		//배너등록
		@RequestMapping("/admin/banner/admin_bannerWrite")
		public String admin_bannerWrite(Model model) {
			model.addAttribute("adminMainPage","./banner/admin_bannerWrite.jsp");
			return "/admin/admin_index";
		}

}
