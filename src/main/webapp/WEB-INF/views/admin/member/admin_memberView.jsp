<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이지슐랭 :: 내일의 맛보기, 이지슐랭[관리자]</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>


    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_member.css" rel="stylesheet" type="text/css" />

</head>
<body>  
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_member.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 회원관리 > 회원상세보기</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 회원상세보기 </div>

      <!-- 가입정보테이블 -->
      <br>
      <p>ㅣ가입정보</p>
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="45%">
        <col width="10%" class="labelTxt">
        <col width="45%"> 
        <tr>
          <td>아이디</td>
          <td>
            <input type="text" name="user_id" value="easyChelin" readonly>
          </td>
          <td>회원등급</td>
          <td>
            <select name="schGrade">
              <option value="1">VIP</option>
              <option value="2" selected>일반회원</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>이름</td>
          <td><input type="text" name="user_name" value="홍길동" readonly></td>
          <td>휴대폰</td>
          <td><input type="text" name="user_phone" value="010-1234-5678"></td>
        </tr>
        <tr>
          <td>비밀번호</td>
          <td colspan="3">
            <input class="check" type="radio" id="pw1" name="pwCheck" checked><label for="pw1">암호화 되어 있음&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="pw2" name="pwCheck"><label for="pw2">변경&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="password" name="user_pw" placeholder="비밀번호 입력">
            <input type="password" name="user_pwCheck" placeholder="비밀번호확인 입력">
          </td>
        </tr>
        <tr>
          <td>이메일</td>
          <td colspan="3">
            <input type="email" name="user_mail" value="easyChelin@naver.com">
            메일 수신 여부 
            <input class="check" type="radio" id="mailBox1" name="recieve" checked><label for="mailBox1">수신&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="mailBox2" name="recieve"><label for="mailBox2">거부</label>            
          </td>
        </tr>
        <tr>
          <td>주소</td>
          <td colspan="3">
            <input type="text" name="user_zip" value="123-456" readonly>
            <input type="button" value="우편번호"><br>
            <input type="text" name="user_address1" value="서울 노원구 동일로000길 00로">
            <input type="text" name="user_address2" value="102동 003호">
          </td>
        </tr>
        <tr>
          <td>생년월일</td>
          <td><input type="date" name="dday" value="2000-01-01"/></td>
          <td>성별</td>
          <td>
            <input class="check" type="radio" id="gender1" name="gender" checked><label for="gender1">남&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="gender2" name="gender"><label for="gender2">여</label>            
          </td>
        </tr>
      </table>
      <!-- 가입정보테이블 end -->
      <!-- 이용/운영 정보 -->
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="45%">
        <col width="10%" class="labelTxt">
        <col width="45%"> 
        <tr>
          <td>가입일</td>
          <td>2017-08-23 12:30:20</td>
          <td>최근 로그인</td>
          <td>2020-05-22 10:38:10</td>
        </tr>
        <tr>
          <td>총 구매 금액</td>
          <td>1,250,350원 <button class="sBtn">주문목록</button></td>
          <td>적립금</td>
          <td>5,620원 <button class="sBtn">적립금목록</button></td>
        </tr>
        <tr>
          <td colspan="4" class="btnTd">
            <input type="submit" value="수정" class="btnSch">
            <input type="submit" value="회원탈퇴" class="btnSch2">
          </td>
        </tr>
      </table>

      

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->