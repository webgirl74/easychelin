package com.study.springboot.dto;
import java.util.Date;
import lombok.Data;
@Data
public class MemberDto {
    private int user_idx;
    private String user_id;
    private String user_pw;
    private String user_name;
    private String user_email;
    private int user_email_receive;
    private String user_phone;  //�߰�
    private String user_zip; 
    private String user_address;
    private Date user_birth; //����
    private int user_gender;
    private int user_grade;  //����
    private int user_point;  //����
    private Date user_join_date;
    private String user_noname1;
    private String user_noname2;
    private String user_noname3;
    
    
    
    
    
}