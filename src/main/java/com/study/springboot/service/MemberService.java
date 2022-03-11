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

	public int login(String User_id, String User_pw) {
		
		int result = 0;
		
		int count = memberDao.login(User_id, User_pw);
		if( count >= 1 ) {
			result = 1; 
		}
		
		return result;
	}
	
	public String idFind(String user_name, String user_email) {
		
		List<MemberDto> list = memberDao.idFind(user_name, user_email);
		if( list != null ) {
			if( list.size() > 0 ) {
				return list.get(0).getUser_id();
			}
		}
		return "";
	}
	
	public String passwordFind(String user_id, String user_email) {
		
		List<MemberDto> list = memberDao.passwordFind(user_id, user_email);
		if( list != null ) {
			if( list.size() > 0 ) {
				return list.get(0).getUser_pw();
			}
		}
		return "";
	}
	
	public int idCheckAjax( String user_id ) {
		
		int result = memberDao.idCheck( user_id );
		
		return result;
		
	}
	
   public int emailCheckAjax( String user_email ) {
		
		int result = memberDao.emailCheck(user_email);
		
		return result;
		
	}
	
	public int join(String user_id, String user_pw, String user_name, String user_email, String user_email_receive,
			String user_phone, String user_zip, String user_abbess, String user_birth,String user_gender) {
		
		int result = memberDao.join(user_id, user_pw, user_name, user_email, user_email_receive, user_phone, user_zip, user_abbess, user_birth, user_gender);
		
		return result;
	}
}





















