package com.study.springboot;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.dto.PrivateDto;
import com.study.springboot.dto.TermsDto;
import com.study.springboot.service.PrivateService;
import com.study.springboot.service.TermsService;

@Controller
public class MyController_adInfo {
	
	@Autowired
	private TermsService termsService;
	
	@Autowired
	private PrivateService privateService;
	
	//관리자 약관관리
	@RequestMapping("/admin/info/admin_infoAgreement")
	public String admin_infoAgreement(Model model) {
		
		List<TermsDto> terms_list = termsService.terms_list();
		model.addAttribute("terms_list", terms_list);
		
		model.addAttribute("adminMainPage","./info/admin_infoAgreement.jsp");
		
		return "/admin/admin_index";
	}
	
	//관리자 약관상세보기
	@RequestMapping("/admin/info/admin_infoAgreementView")
	public String admin_infoAgreementView(	@RequestParam("terms_idx") String terms_idx,
											HttpServletRequest request,
											Model model) {
		
		TermsDto terms_dto = termsService.terms_content( terms_idx );
		model.addAttribute("terms_dto", terms_dto);
		
		model.addAttribute("adminMainPage","./info/admin_infoAgreementView.jsp");
		
		return "/admin/admin_index";
	}
	
	//관리자 약관등록
	@RequestMapping("/admin/info/admin_infoAgreementWrite")
	public String admin_infoAgreementWrite(	Model model) {
				
		model.addAttribute("adminMainPage","./info/admin_infoAgreementWrite.jsp");
		
		return "/admin/admin_index";
	}	
	
	//관리자 약관등록Action
	@RequestMapping("/admin/info/admin_infoAgreementWriteAction")
	@ResponseBody
	public String admin_infoAgreementWriteAction(	HttpServletRequest request,
													Model model) {
		
		String terms_title = request.getParameter("terms_title");
		String terms_content = request.getParameter("terms_content");
		String terms_opt = request.getParameter("terms_opt");
		String terms_noname = request.getParameter("terms_noname");
		
		System.out.println("terms_title:" + terms_title);
		System.out.println("terms_content:" + terms_content);
		System.out.println("terms_opt:" + terms_opt);
		System.out.println("terms_noname:" + terms_noname);	
		
		
		TermsDto dto = new TermsDto();
		dto.setTerms_title(terms_title);
		dto.setTerms_content(terms_content);
		dto.setTerms_opt(terms_opt);
		dto.setTerms_noname(terms_noname);
		
		int result = termsService.terms_write(dto);
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "<script>alert('약관등록 전송되었습니다.'); location.href='/admin/info/admin_infoAgreement';</script>";
		
		}else {
			
			return "<script>alert('약관등록 실패하였습니다.'); history.back(-1);</script>";
			
		}
	}
	
	//관리자 약관수정
	@RequestMapping("/admin/info/admin_infoAgreementModify")
	public String admin_infoAgreementModify( @RequestParam("terms_idx") String terms_idx,
											 HttpServletRequest request,
											 Model model) {
				
		TermsDto terms_dto = termsService.terms_content( terms_idx );
		model.addAttribute("terms_dto", terms_dto);
		
		model.addAttribute("adminMainPage","./info/admin_infoAgreementModify.jsp");
		
		return "/admin/admin_index";
	}	
	
	//관리자 약관수정Action
	@RequestMapping("/admin/info/admin_infoAgreementModifyAction")
	@ResponseBody
	public String admin_infoAgreementModifyAction(  @RequestParam("terms_idx") int terms_idx,
													@RequestParam("terms_title") String terms_title,
													@RequestParam("terms_content") String terms_content,
													@RequestParam("terms_opt") String terms_opt,
													@RequestParam("terms_noname") String terms_noname,
													HttpServletRequest request,
													Model model) {		
		
		
		/*
		String terms_idx = request.getParameter("terms_idx"); 
		String terms_title = request.getParameter("terms_title"); 
		String terms_content = request.getParameter("terms_content"); 
		String terms_opt =request.getParameter("terms_opt"); 
		String terms_noname = request.getParameter("terms_noname");
		*/
		
		System.out.println("terms_idx:" + terms_idx);
		System.out.println("terms_title:" + terms_title);
		System.out.println("terms_content:" + terms_content);
		System.out.println("terms_opt:" + terms_opt);
		System.out.println("terms_noname:" + terms_noname);	
		
		
		TermsDto dto = new TermsDto();
		dto.setTerms_idx(terms_idx);
		dto.setTerms_title(terms_title);
		dto.setTerms_content(terms_content);
		dto.setTerms_opt(terms_opt);
		dto.setTerms_noname(terms_noname);
		
		int result = termsService.terms_modify(dto);
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "<script>alert('약관수정 전송되었습니다.'); location.href='/admin/info/admin_infoAgreementView?terms_idx=" + terms_idx +"';</script>";
		
		}else {
			
			return "<script>alert('약관수정 실패하였습니다.'); history.back(-1);</script>";
			
		}
	}
	
	// 약관삭제
	@RequestMapping("/admin/info/admin_infoAgreementDeleteAction")
	@ResponseBody
	public String admin_infoAgreementDeleteAction( @RequestParam("terms_idx") String terms_idx,
													HttpServletRequest request,
													Model model) {
		
		int result = termsService.terms_delete(terms_idx); 
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "<script>alert('약관이 삭제되었습니다.'); location.href='/admin/info/admin_infoAgreement';</script>";
		
		}else {
			
			return "<script>alert('약관삭제 실패하였습니다.'); history.back(-1);</script>";
			
		}
	}
		
		
	
	//관리자 정책관리
	@RequestMapping("/admin/info/admin_infoPrivate")
	public String admin_infoPrivate(Model model) {
		
		List<PrivateDto> private_list = privateService.private_list();
		model.addAttribute("private_list", private_list);
		
		model.addAttribute("adminMainPage","./info/admin_infoPrivate.jsp");
		return "/admin/admin_index";
	}
	
	//관리자 정책상세보기
	@RequestMapping("/admin/info/admin_infoPrivateView")
	public String admin_infoPrivateView(	@RequestParam("easyPolicy_idx") String easyPolicy_idx,
											HttpServletRequest request,
											Model model) {
		
		PrivateDto private_dto = privateService.private_content( easyPolicy_idx );
		model.addAttribute("private_dto", private_dto);
		
		model.addAttribute("adminMainPage","./info/admin_infoPrivateView.jsp");
		
		return "/admin/admin_index";
	}
	
	//관리자 정책수정
	@RequestMapping("/admin/info/admin_infoPrivateModify")
	public String admin_infoPrivateModify( @RequestParam("easyPolicy_idx") String easyPolicy_idx,
											 HttpServletRequest request,
											 Model model) {
				
		PrivateDto private_dto = privateService.private_content( easyPolicy_idx );
		model.addAttribute("private_dto", private_dto);
		
		model.addAttribute("adminMainPage","./info/admin_infoPrivateModify.jsp");
		
		return "/admin/admin_index";
	}	
	
	//관리자 정책등록페이지
	@RequestMapping("/admin/info/admin_infoPrivateWrite")
	public String admin_infoPrivateWrite(Model model) {
		
		model.addAttribute("adminMainPage","./info/admin_infoPrivateWrite.jsp");
		return "/admin/admin_index";
	}
	
	
	
	//관리자 정책등록Action
	@RequestMapping("/admin/info/admin_infoPrivateWriteAction")
	@ResponseBody
	public String admin_infoPrivateWriteAction(	HttpServletRequest request,
													Model model) {
		
		String easyPolicy_title = request.getParameter("easyPolicy_title");
		String easyPolicy_content = request.getParameter("easyPolicy_content");
		String easyPolicy_noname = request.getParameter("easyPolicy_noname");
		
		System.out.println("easyPolicy_title:" + easyPolicy_title);
		System.out.println("easyPolicy_content:" + easyPolicy_content);
		System.out.println("easyPolicy_noname:" + easyPolicy_noname);	
		
		
		PrivateDto dto = new PrivateDto();
		dto.setEasyPolicy_title(easyPolicy_title);
		dto.setEasyPolicy_content(easyPolicy_content);
		dto.setEasyPolicy_noname(easyPolicy_noname);
		
		int result = privateService.private_write(dto);
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "<script>alert('정책등록 전송되었습니다.'); location.href='/admin/info/admin_infoPrivate';</script>";
		
		}else {
			
			return "<script>alert('정책등록 실패하였습니다.'); history.back(-1);</script>";
			
		}
	}
	
	//관리자 정책수정Action
	@RequestMapping("/admin/info/admin_infoPrivateModifyAction")
	@ResponseBody
	public String admin_infoPrivateModifyAction(  @RequestParam("easyPolicy_idx") int easyPolicy_idx,
													@RequestParam("easyPolicy_title") String easyPolicy_title,
													@RequestParam("easyPolicy_content") String easyPolicy_content,
													@RequestParam("easyPolicy_noname") String easyPolicy_noname,
													HttpServletRequest request,
													Model model) {		
				
		
		System.out.println("easyPolicy_idx:" + easyPolicy_idx);
		System.out.println("easyPolicy_title:" + easyPolicy_title);
		System.out.println("easyPolicy_content:" + easyPolicy_content);
		System.out.println("easyPolicy_noname:" + easyPolicy_noname);	
		
		
		PrivateDto dto = new PrivateDto();
		dto.setEasyPolicy_idx(easyPolicy_idx);
		dto.setEasyPolicy_title(easyPolicy_title);
		dto.setEasyPolicy_content(easyPolicy_content);
		dto.setEasyPolicy_noname(easyPolicy_noname);
		
		int result = privateService.private_modify(dto);
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "<script>alert('정책수정 전송되었습니다.'); location.href='/admin/info/admin_infoPrivateView?easyPolicy_idx=" + easyPolicy_idx +"';</script>";
		
		}else {
			
			return "<script>alert('정책수정 실패하였습니다.'); history.back(-1);</script>";
			
		}
	}
	
	// 정책삭제
	@RequestMapping("/admin/info/admin_infoPrivateDeleteAction")
	@ResponseBody
	public String admin_infoPrivateDeleteAction( @RequestParam("easyPolicy_idx") String easyPolicy_idx,
													HttpServletRequest request,
													Model model) {
		
		int result = privateService.private_delete(easyPolicy_idx); 
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "<script>alert('정책이 삭제되었습니다.'); location.href='/admin/info/admin_infoPrivate';</script>";
		
		}else {
			
			return "<script>alert('정책삭제 실패하였습니다.'); history.back(-1);</script>";
			
		}
	}

}
