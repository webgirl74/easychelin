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
    <link href="/css/admin/admin_goods.css" rel="stylesheet" type="text/css" />

    
</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_goods.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 상품관리 > 상품목록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 상품목록 </div>

      <!-- 검색테이블 -->
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="45%">
        <col width="10%" class="labelTxt">
        <col width="45%"> 
        <tr>
          <td>상품검색</td>
          <td>
            <select name="schName">
              <option value="1">상품명</option>
              <option value="2">상품코드</option> 
            </select>
            <input type="text" name="" placeholer="검색어를 입력해 주세요.">
          </td>
          <td>상품특성</td>
          <td>
            <input type="checkbox" name="goods_inew" id="goods_inew">
            <label for="goods_inew">&nbsp;신상품</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_ibest" id="goods_ibest">
            <label for="goods_ibest">&nbsp;BEST</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_isale" id="goods_isale">
            <label for="goods_isale">&nbsp;할인</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_isoldout" id="goods_isoldout">
            <label for="goods_isoldout">&nbsp;품절</label>
          </td>
        </tr>
        <tr>
          <td>카테고리 선택</td>
          <td>
            <select name="schName">
              <option value="">선택하세요.</option>
              <option value="1">밀키트</option>
              <option value="2">신선식품</option>              
              <option value="3">냉동식품</option>                         
              <option value="4">건강식품</option>
            </select>
            <select name="schName">
              <!-- 1차카테고리 선택시 해당하는 2차 카테고리 출력 -->
              <option value="">2차 카테고리 선택</option>
            </select>
          </td>
          <td>판매 가격</td>
          <td>
            <input type="text" name="goods_salePrice" class="orderViewPrice1">원 ~
            <input type="text" name="goods_salePrice" class="orderViewPrice1">원
          </td>
        </tr>
        <tr>
          <td>상품 등록일</td>
          <td><input type="month" name="mon" /> ~ <input type="month" name="mon" /></td>
          <td>진열 여부</td>
          <td>
            <input type="checkbox" name="goods_view1" id="goods_view1">
            <label for="goods_view1">&nbsp;진열</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_view2" id="goods_view2">
            <label for="goods_view2">&nbsp;숨김</label>
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
        | 총 등록 상품 : 0000개 / 검색된 상품 : 0000개
      </div>
      <table class="listTable">
        <col width="5%">
        <col width="5%">
        <col width="15%">
        <col>
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <tr>
          <th>
            <!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>          
          </th>
          <th>번호</th>
          <th>카테고리</th>
          <th>상품명</th>
          <th>판매금액</th>
          <th>정상가</th>
          <th>적립금</th>
          <th>상태</th>
          <th>등록일<br>수정일</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>1</td>
          <td>밀키트 > 샐러드</td>
          <td>
            <a href="/admin/goods/admin_goodsView?4?0"><img src="/img/order/noImg.png"> [스윗밸런스]오늘의 샐러드 6종 </a></td>
          <td>5,900원</td>
          <td>6,300</td>
          <td>24원</td>
          <td>진열</td>
          <td>2017-08-16<br>(2017-09-20)</td>
        </tr>
      </table>
      
      <!-- 하단버튼/페이지네이션 -->
      <div class="bottom">
        <!-- 버튼 -->
        <div>
          선택한 항목을 
          <select name="schName">            
            <option value="">선택하세요.</option>
            <option value="1">진열</option>
            <option value="2">숨김</option>              
            <option value="3">품절</option>  
          </select>
          <input type="button" value="상태로 변경" onclick="javascript:collChange();"> &nbsp;&nbsp;
          <input type="button" value="선택한 상품 삭제"> 
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