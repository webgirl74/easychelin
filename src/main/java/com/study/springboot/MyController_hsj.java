package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController_hsj {

	@RequestMapping("/order/addModify")
	public String addModify( Model model) {
		
		return "/order/addModify"; //"main.jsp" 디스패치함.
	}
	
	@RequestMapping("/order/cartList")
	public String cartList( Model model) {
		
		return "/order/cartList"; //"main.jsp" 디스패치함.
	}
	
	@RequestMapping("/order/order")
	public String order( Model model) {
		
		return "/order/order"; //"main.jsp" 디스패치함.
	}
	
	@RequestMapping("/order/orderCheck")
	public String orderCheck( Model model) {
		
		return "/order/orderCheck"; //"main.jsp" 디스패치함.
	}
	
	@RequestMapping("/order/orderOk")
	public String orderOk( Model model) {
		
		return "/order/orderOk"; //"main.jsp" 디스패치함.
	}
	
	
}
