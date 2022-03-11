package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_adOrder {
	
	//주문목록
		@RequestMapping("/admin/order/admin_orderList")
		public String admin_orderList(Model model) {
			model.addAttribute("adminMainPage","./order/admin_orderList.jsp");
			return "/admin/admin_index";
		}	
		
		//주문상세보기
		@RequestMapping("/admin/order/admin_orderView")
		public String admin_orderView(Model model) {
			model.addAttribute("adminMainPage","./order/admin_orderView.jsp");
			return "/admin/admin_index";
		}	

}
