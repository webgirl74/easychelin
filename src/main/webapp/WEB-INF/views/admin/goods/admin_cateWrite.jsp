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

    <script>

        //글자수 제한(배송요청사항)
        $(document).ready(function() {
            $('#buy_message').on('keyup', function() {
                $('#buy_message_cnt').html("("+$(this).val().length+" / 100)");
        
                if($(this).val().length > 100) {
                    $(this).val($(this).val().substring(0, 100));
                    $('#buy_message_cnt').html("(100 / 100)");
                }
            });
        });

    </script>

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
      <location>홈 > 상품관리 > 카테고리등록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 카테고리등록 </div>

    <form action="" method="post" name="frm" id="frm">
      <!-- 상품정보입력 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col width="85%">
        <tr>
          <th colspan="6">
            | 2차 카테고리 등록/수정
          </th>
        </tr>
        <tr>
          <td>1차 카테고리</td>
          <td>
            <select name="goodsCate1">              
              <option value="">1차 카테고리 선택</option>
              <option value="1">밀키트</option>
              <option value="2">신선식품</option> 
              <option value="3">냉동식품</option> 
              <option value="4">건강식품</option>   
            </select>            
          </td>
        </tr>
        <tr>
          <td>카테고리명</td>
          <td>
            <input type="text" name="goods_brand" style="width:70%;">
          </td>
        </tr>
      </table>
      <!-- 상품정보입력 테이블 end -->


      <div style="text-align:center;margin-bottom:100px;">
        <input type="submit" value="등록" class="btnSch">
        <input type="button" value="취소" class="btnSch2">
      </div>
    </form>

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->