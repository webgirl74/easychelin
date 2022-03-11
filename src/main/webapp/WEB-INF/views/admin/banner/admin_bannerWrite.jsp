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

</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_banner.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 배너관리 > 배너등록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 배너등록 </div>

      <!-- 배너등록테이블 -->
      <br>
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="85%">
        <tr>
          <td>배너구분</td>
          <td>
            <select name="banner_cate">
              <option value="">선택하세요.</option>
              <option value="1">GNB 탑</option>
              <option value="2">메인배너1(캐러셀)</option>
              <option value="3">메인배너2</option>
              <option value="4">상품카테고리별 배너</option>
              <option value="5">메인페이지 배너</option>
              <option value="6">로그인 배너</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>노출방식</td>
          <td>
            <input class="check" type="radio" id="banner_on1" name="banner_on" checked><label for="banner_on1">노출&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="banner_on2" name="banner_on"><label for="banner_on2">숨김</label>            
          </td>
        </tr>
        <!-- 카테고리별 상품배너 등록에만 사용 -->
        <tr>
          <td>제품카테고리</td>
          <td>
            <select name="banner_goods">              
              <option value="">1차 카테고리 선택</option>
              <option value="1">밀키트</option>
              <option value="2">신선식품</option> 
              <option value="3">냉동식품</option> 
              <option value="4">건강식품</option>   
            </select> 
            ※카테고리별 상품배너일 경우만 선택하세요.
          </td>
        </tr>
        <tr>
          <td>배너이미지보기</td>
          <td colspan="3">
            등록된 이미지가 없습니다.
          </td>
        </tr>
        <tr>
          <td>배너이미지</td>
          <td>
            <input type="file" name="banner_file" style="width:30%;" multiple>
          </td>
        </tr>
        <tr>
          <td>링크주소</td>
          <td>
            <input type="text" name="banner_url">
            <input class="check" type="radio" id="banner_window1" name="banner_window"><label for="banner_window1">새 창 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="banner_window2" name="banner_window" checked><label for="banner_window2">현재 창</label>            
          </td>
        </tr>
        <tr>
          <td>대체텍스트</td>
          <td><input type="text" name="banner_txt"> </td>
        </tr>
        <tr>
          <td colspan="4" class="btnTd">
            <input type="submit" value="등록" class="btnSch">
            <input type="submit" value="취소" class="btnSch2">
          </td>
        </tr>
      </table>
      <!-- 배너등록테이블 end -->
      

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->