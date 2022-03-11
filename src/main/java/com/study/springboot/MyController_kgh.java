package com.study.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.service.MemberService;

@Controller
public class MyController_kgh {
	
	@Autowired
	private MemberService memberService;

//다른 조원과 중복되는 코드로 MyController.java로 이동합니다.
//	@RequestMapping("/")
//	public String root() {
//		return "redirect:main";
//	}
//	
//	@RequestMapping("/main")
//	public String main( Model model) {
//		
//		model.addAttribute("mainPage", "main.jsp");
//		
//		return "index"; //"index.jsp" 디스패치함.
//	}
	
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/login.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
	@RequestMapping("/member/loginAction")
	@ResponseBody
	public String loginAction(@RequestParam("user_id") String user_id,
			                  @RequestParam("user_pw") String user_pw,
			                  HttpServletRequest request) {
		System.out.println("User_id:" + user_id);
		System.out.println("User_pw:" + user_pw);
		
		int result = memberService.login(user_id, user_pw);
		if( result == 1 ) { //로그인 성공
			
			//로그인 세션 등록
			request.getSession().setAttribute("user_id", user_id);
			
			return "<script>alert('로그인 성공!'); location.href='/';</script>";
		}else { //로그인 실패
			return "<script>alert('로그인 실패!'); history.back(-1);</script>";
		}
	}
	@RequestMapping("/member/logoutAction")
	@ResponseBody
	public String loginAction(HttpServletRequest request) {
		
		//세션객체 초기화
		request.getSession().invalidate();
		return "<script>alert('로그아웃 되었습니다.'); location.href='/';</script>";
		
	}
	
	
	@RequestMapping("/member/loginIdFind")
	public String loginIdFind() {
		return "/member/loginIdFind"; //"idFind.jsp" 디스패치
	}

	@RequestMapping("/member/idFindAction") 
	@ResponseBody
	public String idFindAction(@RequestParam("user_name") String user_name,
								@RequestParam("user_email") String user_email,
								HttpServletRequest request) {
		
		System.out.println("user_name:" + user_name);
		System.out.println("user_email:" + user_email);
		
		String user_id =  memberService.idFind(user_name, user_email); 
		System.out.println("user_id:" + user_id);
		
		
		
		//hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(user_id) ) {			
			return "<script>alert('아이디를 찾았습니다.'); location.href='/member/loginIdFindOk?find_user_id=" + user_id  +"';</script>";
		}else {
			return "<script>alert('아이디를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	@RequestMapping("/member/loginIdFindOk")
	public String loginIdFindOk(@RequestParam(value="find_user_id", required=false) String find_user_id,
			                    
			                     Model model) {
		model.addAttribute("find_user_id", find_user_id);
		
		return "/member/loginIdFindOk"; //"idFind.jsp" 디스패치
	}
	
	@RequestMapping("/member/loginPwFind")
	public String loginPwFind(@RequestParam(value="find_user_pw", required=false) String find_user_pw,
			             Model model) {
		model.addAttribute("find_user_pw", find_user_pw);
		return "/member/loginPwFind"; //"passwordFind.jsp" 
	}
	@RequestMapping("/member/passwordFindAction") 
	@ResponseBody
	public String passwordFindAction(@RequestParam("user_id") String user_id,
								     @RequestParam("user_email") String user_email,
								     HttpServletRequest request) {
		
		
		System.out.println("user_id:" + user_id);
		System.out.println("user_email:" + user_email);
		
		String user_pw = memberService.passwordFind(user_id, user_email);
		System.out.println("user_pw:" + user_pw);
		
		//hasText
		if( StringUtils.hasText(user_pw) ) {			
			return "<script>alert('비밀번호를 찾았습니다.'); location.href='/member/loginPwFindOk?find_user_pw=" + user_pw + "';</script>";
		}else {
			return "<script>alert('비밀번호를 찾지못했습니다.'); history.back(-1);</script>";
		}
		
	}	
	@RequestMapping("/member/loginPwFindOk")
	public String loginPwFindOk(@RequestParam(value="find_user_pw", required=false) String find_user_pw,
			             Model model) {
		model.addAttribute("find_user_pw", find_user_pw);
		return "/member/loginPwFindOk"; //"loginPwFindOk.jsp" 
	}
	
	
	@RequestMapping("/member/memberAgree")
	public String memberAgree(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/memberAgree.jsp");
		
		return "index"; //index.jsp 디스패치 
	}

	@RequestMapping("/member/memberJoin")
	public String memberJoin(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/memberJoin.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
	@RequestMapping("/member/idCheckAjax")
	@ResponseBody
	public String idCheckAjax(@RequestParam("user_id") String user_id) {
		
		int result = memberService.idCheckAjax(user_id);
		
		if( result >= 1 ) {
			return "1"; //아이디 중복됨.
		}else {
			return "0"; //아이디 중복안됨.
		}
		
	}
	
	
	@RequestMapping("/member/emailCheckAjax")
	@ResponseBody
	public String emailCheckAjax(@RequestParam("user_email") String user_email) {
		
		int result = memberService.emailCheckAjax(user_email);
		
		if( result >= 1 ) {
			return "1"; //이메일 중복됨.
		}else {
			return "0"; //이메일 중복안됨.
		}
		
	}
	@RequestMapping("/member/memberJoinAction")
	@ResponseBody
	public String memberJoinAction(
			@RequestParam("user_id") String user_id,
			@RequestParam("user_pw") String user_pw,
			@RequestParam("user_name") String user_name,
			@RequestParam("user_email") String user_email,
			@RequestParam("user_email_receive") String user_email_receive,
			@RequestParam("user_phone") String user_phone,
			@RequestParam("user_zip") String user_zip,
			@RequestParam("user_address") String user_address,
			@RequestParam("user_birth") String user_birth ,
	        @RequestParam("user_gender") String user_gender ){
		
		System.out.println("user_id:"+user_id);
		System.out.println("user_pw:"+user_pw);
		System.out.println("user_name:"+user_name);
		System.out.println("user_email:"+user_email);
		System.out.println("user_email_receive:"+user_email_receive);
		System.out.println("user_phone:"+user_phone);
		System.out.println("user_zip:"+user_zip);
		System.out.println("user_address:"+user_address);
		System.out.println("user_birth:"+user_birth);
        System.out.println("user_gender:"+user_gender);
		
		int result = memberService.join(user_id, user_pw, user_name, user_email, user_email_receive, user_phone, user_zip, user_address, user_birth, user_gender);
		if( result == 1 ) {
			return "<script>alert('회원가입되었습니다.'); location.href='/member/memberJoinOk';</script>";
		}
		else {
			return "<script>alert('회원가입 실패'); history.back(-1);</script>";
		}
		
	}
	@RequestMapping("/member/memberJoinOk")
	public String memberJoinOk(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/memberJoinOk.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
}



