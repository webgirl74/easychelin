package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.MemberDto;

@Mapper
public interface IMemberDao {
	public int login(String member_id, String member_pw);
	public List<MemberDto> idFind(String member_name, String member_email);
	public List<MemberDto> passwordFind(String member_name, String member_id, String member_email);
	public int idCheck( String member_id );
	public int join( String member_id, String member_pw, String member_name, String member_email, String member_email_receive,
			String member_pw_question, String member_pw_answer, String member_gender, String member_birth_date);
}
