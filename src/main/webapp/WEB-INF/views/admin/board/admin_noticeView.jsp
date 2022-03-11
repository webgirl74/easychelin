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

    <!-- 스마트에디터 -->
    <script type="text/javascript" src="/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_board.css" rel="stylesheet" type="text/css" />


</head>
<body>
  <!-- 헤더 -->
  <div id="gnb"></div>  
  
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_board.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 게시판관리 > 공지사항</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 공지사항 </div>

      <!-- 검색테이블 -->
        <table class="viewTable">
          <col>
          <col width="10%">
          <tr>
            <td>제목이 표시됩니다.</td>
            <td>
              2022-01-05  <!--작성일-->
            </td>
          </tr>
          <tr>
            <td colspan="2">
              {내용표기} <br>

              (예) <br>
              고객님 안녕하세요! 이지슐랭 관리자입니다. <br>
              추석 명절로 인해 배송이 지연되고 있습니다. <br>
              이 점 양해를 구합니다. 아래 안내 사항을 참고해 주세요. <br> <br>

              [배송 안내] <br>
              2017-01-27 이후 주문: 2월 15일에 일괄 발송 <br>
              2017-01-27 이전 주문: 정상 발송 <br> <br>

              행복한 명절 보내시길 바랍니다. <br>
              감사합니다. <br>
            </td>
          </tr>
        </table>
      <!-- 검색테이블 end -->
      <div class="bottom">
        <div>
          <button type="button" class="btnBoard2" onclick="window.location.href = '/admin/board/admin_noticeView?2?0';">◀ 이전글</button>
          <button type="button" class="btnBoard2" onclick="window.location.href = '/admin/board/admin_noticeView?2?0';">다음글 ▶</button>
        </div>
        <div>
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeList?2?0';">목록</button>
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeModify?2?0';">수정</button>
          <button type="button" class="btnBoard1" onclick="window.location.href = '';">삭제</button>
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeWrite?2?0';">글쓰기</button>
        </div>
      </div>


    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->