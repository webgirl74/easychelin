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

    
    <script>
      // 적립금 추가/삭제 팝업창
      function pointPop() {
          window.open('/admin/member/admin_pop_point', '_blank', 'width=830, height=500');
          return false;   
      }

      // 회원적립금목록 팝업창
      function memberPointPop() {
          window.open('/admin/member/admin_pop_memberPoint', '_blank', 'width=830, height=500');
          return false;   
      }

      // 회원주문목록 팝업창
      function memberBuyPop() {
          window.open('/admin/member/admin_pop_memberBuy', '_blank', 'width=830, height=500');
          return false;   
      }
    </script>

</head>
<body>  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_member.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 회원관리 > 회원목록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 회원목록 </div>

      <!-- 검색테이블 -->
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="45%">
        <col width="10%" class="labelTxt">
        <col width="45%"> 
        <tr>
          <td>개인정보</td>
          <td>
            <select name="schName">
              <option value="1">이름</option>
              <option value="2" selected>아이디</option>
            </select>
            <input type="text" name="" placeholer="검색어를 입력해 주세요.">
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
          <td>가입일</td>
          <td><input type="month" name="mon" /> ~ <input type="month" name="mon" /></td>
          <td>총 주문금액</td>
          <td><input type="text"> 원  ~  <input type="text"> 원</td>
        </tr>
        <tr>
          <td>메일수신</td>
          <td>
            <input class="check" type="radio" id="box1" name="recieve"><label for="box1">수신&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="box2" name="recieve"><label for="box2">거부</label>
          </td>
          <td>적립금</td>
          <td><input type="text"> 원  ~  <input type="text"> 원</td>
        </tr>
        <tr>
          <td colspan="4" class="btnTd"><input type="submit" value="검색" class="btnSch"></td>
        </tr>
      </table>
      <!-- 검색테이블 end -->

      <!-- 리스트 테이블 -->
      <!-- 버튼 -->
      <div>
        <input type="button" value="선택회원 탈퇴"> 
        <input type="button" value="선택회원 적립금 추가/삭제" onclick="javascript:pointPop();"> 
        <input type="button" value="선택회원 이메일 보내기"> 
      </div>
      <table class="listTable">
        <col width="4%">
        <col width="4%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="5%">
        <col width="15%">
        <tr>
          <th>
            <!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>          
          </th>
          <th>번호</th>
          <th>가입일</th>
          <th>이름</th>
          <th>아이디</th>
          <th>등급</th>
          <th>휴대폰</th>
          <th>구매금액</th>
          <th>적립금</th>
          <th>메일수신</th>
          <th>관련내역보기</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>1</td>
          <td>2017-08-23</td>
          <td><a href="/admin/member/admin_memberView?0?0">임꺽정</a></td>
          <td><a href="/admin/member/admin_memberView?0?0">user1234</a></td>
          <td>일반회원</td>
          <td>010-1234-5678</td>
          <td>1,250,350원</td>
          <td>5,620원</td>
          <td>수신</td>
          <td>
            <button class="sBtn" onclick="javascript:memberBuyPop();">주문목록</button>
            <button class="sBtn" onclick="javascript:memberPointPop();">적립금목록</button>
          </td>
        </tr>
      </table>
      
      <!-- 하단버튼/페이지네이션 -->
      <div class="bottom">
        <!-- 버튼 -->
        <div>
          <input type="button" value="선택회원 탈퇴"> 
          <input type="button" value="선택회원 적립금 추가/삭제" onclick="javascript:pointPop();"> 
          <input type="button" value="선택회원 이메일 보내기"> 
        </div>
        <div class="pagination">
          <a href="#"><<</a>
          <a href="#"><</a>
          <a href="#">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">6</a>
          <a href="#">></a>
          <a href="#">>></a>
        </div>
      </div>

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->