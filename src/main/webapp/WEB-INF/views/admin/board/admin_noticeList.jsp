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
    <link href="/css/admin/admin_board.css" rel="stylesheet" type="text/css" />

</head>
<body>  
  
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
      <table class="schTable">
        <tr>
          <td class="btnTd">
            <select name="schName">
              <option value="1">제목</option>
              <option value="2">내용</option>
              <option value="3" selected>제목 + 내용</option>
            </select>
            <input type="text" name="" placeholer="검색어를 입력해 주세요." size="100">
            <input type="submit" value="검색" class="btnSch">
          </td>
        </tr>
      </table>
      <!-- 검색테이블 end -->

      <!-- 검색결과 테이블 -->
      <table class="listTable">
        <col width="5%">
        <col width="5%">
        <col>
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <tr>
          <th><!-- 클릭 시 전체 석택기능 넣어주세요. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>
          </th>
          <th>번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
          <th>조회수</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td><button class="sBtn">중요</button></td>
          <td class="subject"><a href="/admin/board/admin_noticeView?2?0">글 제목이 표기 됩니다.</a></td>          
          <td>관리자</td>
          <td>2021-08-23</td>
          <td>12</td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>1</td>
          <td class="subject"><a href="/admin/board/admin_noticeView?2?0">글 제목이 표기 됩니다.</a></td>          
          <td>관리자</td>
          <td>2021-08-23</td>
          <td>12</td>
        </tr>
      </table>
      <!-- 하단버튼/페이지네이션 -->
      <div class="bottom">
        <!-- 버튼 -->
        <div>
          <input type="button" value="선택글 삭제"> 
          <input type="button" value="선택글 중요 지정"> 
          <input type="button" value="선택글 중요 해제"> 
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeWrite?2?0';">글쓰기</button>
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