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
      <location>홈 > 배너관리 > 메인배너1(Carousel)</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 메인배너1 </div>

      <!-- 배너목록테이블 -->
      <br>
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="35%">
        <col width="10%" class="labelTxt">
        <col width="40%">
        <!-- 반복시작 -->
        <tr>
          <td>선택</td>
          <td>
            <!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>번호</td>
          <td>2</td>
        </tr>
        <!-- 카테고리별 상품배너 등록에만 사용 -->
        <tr>
          <td>제품카테고리</td>
          <td>밀키트</td>
          <td>노출방식</td>
          <td>
            <input class="check" type="radio" id="banner_on1" name="banner_on" checked><label for="banner_on1">노출&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="banner_on2" name="banner_on"><label for="banner_on2">숨김</label>            
          </td>
        </tr>
        <tr>
          <td>배너이미지보기</td>
          <td colspan="3">
            <img src="/img/main/carousel/carousel01.jpg" width="80%;">
          </td>
        </tr>
        <tr>
          <td>배너이미지</td>
          <td colspan="3">
            <input type="file" name="banner_file" multiple>
          </td>
        </tr>
        <tr>
          <td>링크주소</td>
          <td colspan="3">
            http://www.easychelin.com/customer/noticeList.jsp  &nbsp;&nbsp;(본 창)</td>
        </tr>
        <tr>
          <td>대체텍스트</td>
          <td colspan="3"><input type="text" name="banner_txt" value="이 주의 이지슐랭 신상"> </td>
        </tr>
        <tr><td colspan="4" style="height:1px;background-color:#ccc;"></td></tr>
        <!-- 반복끝 -->
        <!-- 반복시작 -->
        <tr>
          <td>선택</td>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>번호</td>
          <td>2</td>
        </tr>
        <!-- 카테고리별 상품배너 등록에만 사용 -->
        <tr>
          <td>제품카테고리</td>
          <td>밀키트</td>
          <td>노출방식</td>
          <td>
            <input class="check" type="radio" id="banner_on1" name="banner_on" checked><label for="banner_on1">노출&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="banner_on2" name="banner_on"><label for="banner_on2">숨김</label>            
          </td>
        </tr>
        <tr>
          <td>배너이미지보기</td>
          <td colspan="3">
            <img src="/img/main/carousel/carousel01.jpg" width="80%;">
          </td>
        </tr>
        <tr>
          <td>배너이미지</td>
          <td colspan="3">
            <input type="file" name="banner_file" multiple>
          </td>
        </tr>
        <tr>
          <td>링크주소</td>
          <td colspan="3">
            http://www.easychelin.com/customer/noticeList.jsp  &nbsp;&nbsp;(본 창)</td>
        </tr>
        <tr>
          <td>대체텍스트</td>
          <td colspan="3"><input type="text" name="banner_txt" value="이 주의 이지슐랭 신상"> </td>
        </tr>
        <tr><td colspan="4" style="height:1px;background-color:#ccc;"></td></tr>
        <!-- 반복끝 -->
        

        <!-- 버튼 -->
        <tr>
          <td colspan="4" class="btnTd">
            <!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">전체선택 &nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="submit" value="선택수정" class="btnSch">
            <input type="submit" value="선택삭제" class="btnSch2">
          </td>
        </tr>
      </table>
      <!-- 배너목록테이블 end -->
      

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->