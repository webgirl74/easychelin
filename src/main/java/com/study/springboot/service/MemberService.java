package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dto.MemberDto;

@Component
public class MemberService {
	@Autowired
	IMemberDao memberDao;

	public int login(String member_id, String member_pw) {
		
		int result = 0;
		
		int count = memberDao.login(member_id, member_pw);
		if( count >= 1 ) {
			result = 1; //로그인 성공
		}
		
		return result;
	}
	
	public String idFind(String member_name, String member_email) {
		
		List<MemberDto> list = memberDao.idFind(member_name, member_email);
		if( list != null ) {
			if( list.size() > 0 ) {
				return list.get(0).getMember_id();
			}
		}
		return "";
	}
	
	public String passwordFind(String member_name, String member_id, String member_email) {
		
		List<MemberDto> list = memberDao.passwordFind(member_name, member_id, member_email);
		if( list != null ) {
			if( list.size() > 0 ) {
				return list.get(0).getMember_pw();
			}
		}
		return "";
	}
	
	public int idCheckAjax( String member_id ) {
		
		int result = memberDao.idCheck( member_id );
		
		return result;
		
	}
	
	public int join(String member_id, String member_pw, String member_name, String member_email, String member_email_receive,
			String member_pw_question, String member_pw_answer, String member_gender, String member_birth_date) {
		
		int result = memberDao.join( member_id, member_pw, member_name, member_email, member_email_receive, 
				member_pw_question, member_pw_answer, member_gender, member_birth_date);
		
		return result;
	}
}





















