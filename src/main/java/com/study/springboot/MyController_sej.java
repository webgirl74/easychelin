package com.study.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.service.MemberService;

@Controller
public class MyController_sej {
	
	@Autowired
	private MemberService memberService;
	
	//관리자
	@RequestMapping("/admin")
	public String admin() {		
		return "redirect:/admin/admin_login";
	}
	
	//관리자메인
	@RequestMapping("/admin/admin_index")
	public String admin_index(Model model) {
		model.addAttribute("adminMainPage","admin_main.jsp");
		return "/admin/admin_index";
	}
	
	//관리자로그인페이지로 이동
	@RequestMapping("/admin/admin_login")
	public String admin_login() {
		return "/admin/admin_login"; //   "/admin/admin_login.jsp"로 디스패치함.
	}
	
	//관리자로그인
	@RequestMapping("/admin/admin_loginAction")
	@ResponseBody
	public String admin_loginAction( @RequestParam("user_id") String user_id,
			                         @RequestParam("user_pw") String user_pw,
			                         HttpServletRequest request) {
		int result = memberService.login(user_id, user_pw);
		if( result ==1 ) { //로그인성공!
			//로그인 세션 등록
			request.getSession().setAttribute("user_id", user_id);
			return "<script>alert('로그인성공'); location.href='/admin/admin_index';</script>";
		} else {	//로그인실패
			return "<script>alert('로그인실패'); history.back(-1);</script>";
		}		
	}
	
	//관리자로그아웃
	@RequestMapping("/admin/admin_logoutAction")
	@ResponseBody
	public String admin_logoutAction( HttpServletRequest request) {
		
			//세션객체 초기화
			request.getSession().invalidate();
			return "<script>alert('로그아웃되었습니다.'); location.href='/admin/admin_login';</script>";		
	}
	
	

}  //MyController_sej
