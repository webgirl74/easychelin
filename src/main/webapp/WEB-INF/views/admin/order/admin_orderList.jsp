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
    <link href="/css/admin/admin_order.css" rel="stylesheet" type="text/css" />

    
    <script>
      // 상태변경
      function collChange() {
          alert("변경이 완료되었습니다.")
          return false;   
      }

      // 리스트다운받기
      function soon(){
        alert("준비중입니다.");
      }
    </script>

</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_order.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 주문관리 > 주문목록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 주문목록 </div>

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
              <option value="1">주문번호</option>
              <option value="2" selected>상품명</option>              
              <option value="3">주문자 아이디</option>                         
              <option value="4">주문자 이름</option>
            </select>
            <input type="text" name="" placeholer="검색어를 입력해 주세요.">
          </td>
          <td>상품 주문일</td>
          <td>
            <input type="month" name="mon" /> ~ <input type="month" name="mon" />
          </td>
        </tr>
        <tr>
          <td colspan="4" class="btnTd"><input type="submit" value="검색" class="btnSch"></td>
        </tr>
      </table>
      <!-- 검색테이블 end -->

      <!-- 리스트 테이블 -->
      <!-- 버튼 -->
      <div>
        <input type="button" value="주문전체보기"> 
        <input type="button" value="주문확인전"> 
        <input type="button" value="주문확인"> 
        <input type="button" value="배송준비중"> 
        <input type="button" value="배송중"> 
        <input type="button" value="배송완료"> 
      </div>
      <table class="listTable">
        <col width="5%">
        <col width="5%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col>
        <col width="10%">
        <col width="10%">
        <tr>
          <th>
            <!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>          
          </th>
          <th>번호</th>
          <th>유형</th>
          <th>주문일시</th>
          <th>주문번호</th>
          <th>주문자명<br>(아이디)</th>
          <th>주문상품</th>
          <th>결제금액</th>
          <th>결제상태</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>1</td>
          <td>신규</td>
          <td>2021-12-25 11:30:21</td>
          <td><a href="/admin/order/admin_orderView?1?0">0000000000</a></td>
          <td>홍길동<br>(userId1234)</td>
          <td>[스윗벨런스] 오늘의 샐러드 6종 외 1건</td>
          <td>250,350원</td>
          <td>결제완료</td>
        </tr>
      </table>
      
      <!-- 하단버튼/페이지네이션 -->
      <div class="bottom">
        <!-- 버튼 -->
        <div>
          선택한 항목을 
          <select name="schName">            
            <option value="">선택하세요.</option>
            <option value="1">주문확인</option>
            <option value="2">배송준비중</option>              
            <option value="3">배송중</option>                         
            <option value="4">배송완료</option>
          </select>
          <input type="button" value="상태로 변경" onclick="javascript:collChange();"> &nbsp;&nbsp;
          <input type="button" value="리스트로 다운로드" onclick="javascript:soon();"> 
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