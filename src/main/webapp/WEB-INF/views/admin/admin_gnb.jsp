<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>       
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이지슐랭 :: 내일의 맛보기, 이지슐랭</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>


    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
        
    <script>
    //gnb현위치(오버)표시 활성화 스크립트  ----------  
	  // 자바스크립트로 현재url의 파라미터만 가져오기
	  // 링크뒤에 가져오는 파아미터값으로 left현재메뉴 활성화
		  var gnb = document.location.href.split("?"); 
		  var listsObject = document.getElementsByClassName('glists');
		  listsObject[gnb[1]].classList.add('select');
		
		  // 개발전 메뉴
		  function soon(){
		    alert("준비중입니다.");
		  }
	</script>

</head>
<body>

  <div class="header">
    <div class="logo"><a href="/admin/admin_index"><img src="/img/admin/logo_admin_top.png"></a></div>
    <div class="menu">
      <a href="/main" target="_blank">이용자 화면 보기</a><span>｜</span>
      <a href="/admin/admin_logoutAction">로그아웃 <img src="/img/admin/gnb_icon_logout.png" class="logout"></a>
    </div>
  </div>
  <nav class="navbar">
    <a class="glists" href="/admin/member/admin_memberList?0?0">
      <img src="/img/admin/gnb_icon_01.png"><br>
      회원관리
    </a>
    <a class="glists" href="/admin/order/admin_orderList?1?0">
      <img src="/img/admin/gnb_icon_02.png"><br>
      주문관리
    </a>
    <a class="glists" href="/admin/board/admin_noticeList?2?0">
      <img src="/img/admin/gnb_icon_03.png"><br>
      게시판관리
    </a>
    <a class="glists" href="javascript: soon();">
      <img src="/img/admin/gnb_icon_04.png"><br>
      메인관리
    </a>
    <a class="glists" href="/admin/goods/admin_goodsList?4?0">
      <img src="/img/admin/gnb_icon_05.png"><br>
      상품관리
    </a>
    <a class="glists" href="/admin/banner/admin_banner?5?0?banner_cate=1">
      <img src="/img/admin/gnb_icon_06.png"><br>
      배너관리
    </a>
    <a class="glists" href="javascript: soon();">
      <img src="/img/admin/gnb_icon_07.png"><br>
      팝업창관리
    </a>
    <a class="glists" href="/admin/info/admin_infoAgreement?7?0">
      <img src="/img/admin/gnb_icon_08.png"><br>
      정책관리
    </a>
    <a class="glists" href="javascript: soon();">
      <img src="/img/admin/gnb_icon_09.png"><br>
      통계
    </a>
  </nav>  
