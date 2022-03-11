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
      <location>홈 > 회원관리 > 적립금내역</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 적립금내역 </div>

      <!-- 검색테이블 -->
      <table class="schTable">
        <tr>
          <td style="text-align:center;">
            총 누적 적립금(회원전체 보유 적립금) <span class="pointPrice">12,124,500</span>원
          </td>
        </tr><tr>
          <td style="text-align:center;">
            <input type="month" name="mon" /> ~ <input type="month" name="mon" />
            <input type="submit" value="검색" class="btnSch">
          </td>
        </tr>
      </table>
      <!-- 검색테이블 end -->

      <!-- 리스트 테이블 -->
      <table class="listTable">
        <col width="5%">
        <col width="5%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col>
        <col width="10%">
        <tr>
          <th>
            <!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>
          <th>번호</th>
          <th>아이디</th>
          <th>적립일</th>
          <th>구분</th>
          <th>내용</th>
          <th>적립금</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>2</td>
          <td>user1234</td>
          <td>2017-08-23</td>
          <td>적립</td>
          <td>제품구매</td>
          <td>+5,000</td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>1</td>
          <td>user1234</td>
          <td>2017-08-23</td>
          <td>사용</td>
          <td>제품구매 시 적립금 사용</td>
          <td class="pointUse">-3,000</td>
        </tr>
      </table>
      
      <!-- 하단버튼/페이지네이션 -->
      <div class="bottom">
        <!-- 버튼 -->
        <div>
          <input type="button" value="선택삭제"> 
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