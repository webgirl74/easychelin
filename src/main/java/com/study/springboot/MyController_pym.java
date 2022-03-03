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
public class MyController_pym {
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main( Model model) {
		
		model.addAttribute("mainPage", "main.jsp");
		
		return "index"; //"index.jsp" 디스패치함.
	}
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/login.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
	@RequestMapping("/member/loginAction")
	@ResponseBody
	public String loginAction(@RequestParam("member_id") String member_id,
			                  @RequestParam("member_pw") String member_pw,
			                  HttpServletRequest request) {
		System.out.println("member_id:" + member_id);
		System.out.println("member_pw:" + member_pw);
		
		int result = memberService.login(member_id, member_pw);
		if( result == 1 ) { //로그인 성공
			
			//로그인 세션 등록
			request.getSession().setAttribute("member_id", member_id);
			
			return "<script>alert('로그인 성공!'); location.href='/';</script>";
		}else { //로그인 성공
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
	@RequestMapping("/member/idFind")
	public String idFind(@RequestParam(value="find_member_id", required=false) String find_member_id,
			             Model model) {
		model.addAttribute("find_member_id", find_member_id);
		return "/member/idFind"; //"idFind.jsp" 디스패치
	}

	@RequestMapping("/member/idFindAction") 
	@ResponseBody
	public String idFindAction(@RequestParam("member_name") String member_name,
								@RequestParam("member_email") String member_email,
								HttpServletRequest request) {
		
		System.out.println("member_name:" + member_name);
		System.out.println("member_email:" + member_email);
		
		String member_id = memberService.idFind(member_name, member_email);
		System.out.println("member_id:" + member_id);
		
		//hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(member_id) ) {			
			return "<script>alert('아이디를 찾았습니다.'); location.href='/member/idFind?find_member_id=" + member_id + "';</script>";
		}else {
			return "<script>alert('아이디를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	@RequestMapping("/member/passwordFind")
	public String passwordFind(@RequestParam(value="find_member_pw", required=false) String find_member_pw,
			             Model model) {
		model.addAttribute("find_member_pw", find_member_pw);
		return "/member/passwordFind"; //"passwordFind.jsp" 디스패치
	}
	@RequestMapping("/member/passwordFindAction") 
	@ResponseBody
	public String passwordFindAction(@RequestParam("member_name") String member_name,
									@RequestParam("member_id") String member_id,
								@RequestParam("member_email") String member_email,
								HttpServletRequest request) {
		
		System.out.println("member_name:" + member_name);
		System.out.println("member_id:" + member_id);
		System.out.println("member_email:" + member_email);
		
		String member_pw = memberService.passwordFind(member_name, member_id, member_email);
		System.out.println("member_pw:" + member_pw);
		
		//hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(member_pw) ) {			
			return "<script>alert('암호를 찾았습니다.'); location.href='/member/passwordFind?find_member_pw=" + member_pw + "';</script>";
		}else {
			return "<script>alert('암호를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	@RequestMapping("/member/join")
	public String join(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/join.jsp");
		
		return "index"; //index.jsp 디스패치 
	}

	@RequestMapping("/member/join2")
	public String join2(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/join2.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
	@RequestMapping("/member/idCheckAjax")
	@ResponseBody
	public String idCheckAjax(@RequestParam("member_id") String member_id) {
		
		int result = memberService.idCheckAjax( member_id );
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "1"; //아이디 중복됨.
		}else {
			return "0"; //아이디 중복안됨.
		}
		
	}
	@RequestMapping("/member/join2Action")
	@ResponseBody
	public String join2Action(
			@RequestParam("member_id") String member_id,
			@RequestParam("member_pw") String member_pw,
			@RequestParam("member_name") String member_name,
			@RequestParam("member_email") String member_email,
			@RequestParam("member_email_receive") String member_email_receive,
			@RequestParam("member_pw_question") String member_pw_question,
			@RequestParam("member_pw_answer") String member_pw_answer,
			@RequestParam("member_gender") String member_gender,
			@RequestParam("member_birth_date") String member_birth_date ) {
		
		System.out.println("member_id:"+member_id);
		System.out.println("member_pw:"+member_pw);
		System.out.println("member_name:"+member_name);
		System.out.println("member_email:"+member_email);
		System.out.println("member_email_receive:"+member_email_receive);
		System.out.println("member_pw_question:"+member_pw_question);
		System.out.println("member_pw_answer:"+member_pw_answer);
		System.out.println("member_gender:"+member_gender);
		System.out.println("member_birth_date:"+member_birth_date);
		
		int result = memberService.join(
				member_id,
				member_pw,
				member_name,
				member_email,
				member_email_receive,
				member_pw_question,
				member_pw_answer,
				member_gender,
				member_birth_date
				);
		if( result == 1 ) {
			return "<script>alert('회원가입되었습니다.'); location.href='/member/login';</script>";
		}
		else {
			return "<script>alert('회원가입 실패'); history.back(-1);</script>";
		}
		
	}
	
}



