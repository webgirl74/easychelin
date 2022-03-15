<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

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

    <script>

    </script>

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_goods.css" rel="stylesheet" type="text/css" />

    
</head>
<body>
  
  <div class="adminBox" style="padding-top: 50px; padding-left: 50px;">

    <div class="bbs_wrap" style="width: 90%;">
     
      <div class="pageTitle">::: 카테고리수정 </div>

	  <form action="/admin/goods/cateModifyAction" method="post" name="modifyCate" id="modifyCate">
      <!-- 상품정보입력 테이블 -->
	      <table class="orderView">
	        <col width="18%" class="labelTxt">
	        <col width="77%">
	        <tr>
	          <td>1차 카테고리</td>
	          <td>
	          	<input type="text" name="goodsCate1" id="goodsCate1" value="${ dto.goodsCate1 }" readonly />
	          </td>
	        </tr>
	        <tr>
	          <td>2차 카테고리번호</td>
	          <td>
	            <input type="text" name="goodsCate2_idx" value="${ dto.goodsCate2_idx }" readonly />
	          </td>
	        </tr>
	        <tr>
	          <td>2차 카테고리명</td>
	          <td>
	            <input type="text" name="goodsCate2_name" id="goodsCate2_name" value="${ dto.goodsCate2_name }" style="width:70%;">
	          </td>
	        </tr>
	      </table>
      <!-- 상품정보입력 테이블 end -->
      
        <div style="text-align:center;margin-bottom:100px;">
          <input type="submit" value="수정" class="btnSch">
          <input type="button" value="취소" class="btnSch2" onclick="window.close();">
        </div>
      </form>
    
    </div> <!--bbs_wrap-->
  </div> <!--adminBox-->