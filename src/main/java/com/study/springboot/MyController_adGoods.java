package com.study.springboot;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.dao.IGoodsCateDao;
import com.study.springboot.dto.GoodsCateDto;
import com.study.springboot.service.GoodsCateService;

@Controller
public class MyControll_adGoods {

	@Autowired
	private GoodsCateService goodsCateService;
	@Autowired
	private IGoodsCateDao goodsCateDao;
	
	// 카테고리 목록
	@RequestMapping("/admin/goods/admin_cateList")
	public String admin_cateList( HttpServletRequest request, Model model) {
		
		List<GoodsCateDto> goodsCate_list = goodsCateDao.goodsCate_list();
		
		model.addAttribute("goodsCate_list", goodsCate_list);
		
//		model.addAttribute("mainPage", "admin/goods/admin_cateList.jsp");
		
		return "admin/goods/admin_cateList";
	}
	
	// 카테고리 등록
	@RequestMapping("/admin/goods/admin_cateWrite")
	public String admin_cateWrite( HttpServletRequest request, Model model) {
		
//		model.addAttribute("mainPage", "admin/goods/admin_cateWrite.jsp");
		
		return "admin/goods/admin_cateWrite";
	}
	
	// 카테고리 등록 액션
	@RequestMapping("/admin/goods/cateWriteAction")
	@ResponseBody
	public String cateWriteAction(@RequestParam("goodsCate1") String goodsCate1,
								  @RequestParam("goodsCate2_name") String goodsCate2_name,
								  @RequestParam(value="goodsCate2_noname1", required=false) String goodsCate2_noname1,
								  @RequestParam(value="goodsCate2_noname2", required=false) String goodsCate2_noname2) {
		
		System.out.println("goodsCate1:" + goodsCate1);
		System.out.println("goodsCate2_name:" + goodsCate2_name);
		System.out.println("goodsCate2_noname1:" + goodsCate2_noname1);
		System.out.println("goodsCate2_noname2:" + goodsCate2_noname2);

		int result = goodsCateService.addCate(
				goodsCate1,
				goodsCate2_name,
				goodsCate2_noname1,
				goodsCate2_noname2
				);
		
		if( result == 1 ) {
			return "<script>alert('카테고리 등록이 완료되었습니다.'); location.href='/admin/goods/admin_cateWrite';</script>";

		}else {
			return "<script>alert('카테고리 등록이 실패하였습니다.'); history.back(-1);</script>";

		}
	}
	
	// 카테고리 수정
	@RequestMapping("/admin/goods/admin_cateModify")
	public String admin_cateModify( @RequestParam("goodsCate2_idx") int goodsCate2_idx, Model model ) {
		
		GoodsCateDto dto = goodsCateDao.viewCate( goodsCate2_idx );
		
		model.addAttribute("dto", dto);
		
//		model.addAttribute("mainPage", "admin/goods/admin_cateModify.jsp");
		
		return "admin/goods/admin_cateModify";
	}
	
	// 카테고리 수정 액션
	@RequestMapping("/admin/goods/cateModifyAction")
	@ResponseBody
	public String modifyAction( @RequestParam(value="goodsCate1", required=false) String goodsCate1,
								@RequestParam("goodsCate2_idx") int goodsCate2_idx,
			  					@RequestParam(value="goodsCate2_name", required=false) String goodsCate2_name,
								Model model ) {
				
		int result = goodsCateDao.updateCate(goodsCate1, goodsCate2_idx, goodsCate2_name);
		
		if( result == 1 ) {
			return "<script>alert('카테고리 수정이 완료되었습니다.'); window.close();</script>";
		}else {
			return "<script>alert('카테고리 수정이 실패하였습니다.'); window.close();</script>";
		}

	}
		
	// 카테고리 삭제 액션
	@RequestMapping("/admin/goods/cateDeleteAction")
	@ResponseBody
	public String cateDeleteAction( @RequestParam("goodsCate2_idx") int goodsCate2_idx, Model model ) {
		
		int result = goodsCateDao.deleteCate( goodsCate2_idx );
		
		if( result == 1 ) {
			return "<script>alert('카테고리 삭제가 완료되었습니다.'); location.href='/admin/goods/admin_cateList';</script>";

		}else {
			return "<script>alert('카테고리 삭제가 실패하였습니다.'); history.back(-1);</script>";

		}

	}
	
	// 상품 등록
	@RequestMapping("/admin/goods/admin_goodsWrite")
	public String admin_goodsWrite( HttpServletRequest request, Model model) {
		
//		model.addAttribute("mainPage", "admin/goods/admin_goodsWrite.jsp");
		
		return "admin/goods/admin_goodsWrite";
	}
	
	
}
