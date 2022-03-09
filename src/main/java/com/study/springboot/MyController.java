package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	
	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main( Model model) {
		
//		model.addAttribute("mainPage", "main.jsp");
		
		return "main"; //"index.jsp" 디스패치함.
	}
	
	
	
}
