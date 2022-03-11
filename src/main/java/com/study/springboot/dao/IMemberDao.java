package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.MemberDto;

@Mapper
public interface IMemberDao {
	public int login(String user_id, String user_pw);
	public List<MemberDto> idFind(String user_name, String user_email);
	public List<MemberDto> passwordFind(String user_id, String user_email);
	public int idCheck( String user_id );
	public int emailCheck( String user_email );
	public int join( String user_id, String user_pw, String user_name, String user_email, String user_email_receive,
			String user_phone, String user_zip, String user_address, String user_birth,String user_gender );
}
