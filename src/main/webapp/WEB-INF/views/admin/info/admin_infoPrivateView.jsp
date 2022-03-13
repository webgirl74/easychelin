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

</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_info.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 정책관리 > 정책상세보기</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 정책상세보기 </div>

      <!-- 배너등록테이블 -->
      <br>
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="85%">
        <tr>
          <td>제목</td>
          <td>${ private_dto.easyPolicy_title }</td>
        </tr>
        <tr>
          <td>내용</td>
          <td>${ private_dto.easyPolicy_content }</td>
        </tr>
        <tr>
          <td>등록일</td>
          <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ private_dto.easyPolicy_date }" /></td>
        </tr>
        <tr>
          <td colspan="2" class="btnTd">
            <input type="button" value="수정" class="btnSch" onclick="location.href='/admin/info/admin_infoPrivateModify?easyPolicy_idx='+${private_dto.easyPolicy_idx};">
            <input type="button" value="삭제" class="btnSch" onclick="location.href='/admin/info/admin_infoPrivateDeleteAction?easyPolicy_idx='+${private_dto.easyPolicy_idx};">
            <input type="submit" value="목록" class="btnSch" onclick="location.href='/admin/info/admin_infoPrivate';">
            <input type="button" value="취소" class="btnSch2" onclick="javascript:history.back(-1);">
          </td>
        </tr>
      </table>
      <!-- 배너등록테이블 end -->
      

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->