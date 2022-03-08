<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이지슐랭 :: 내일의 맛보기, 이지슐랭</title>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <!-- jquery -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

    <!-- CSS -->
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/header.css" rel="stylesheet" type="text/css" />

    <!-- slideUp으로 배너 사라지게하기 -->
    <script>
        $(document).ready(function(){
            $("#closeBtn").click(function(){
                $(".bnrTop").slideUp("slow");
            });
        });
    </script>
   
    <!-- 버튼클릭시 검색내용 삭제 -->
    <script>
        var clearInput = function(obj) {
            obj.parentNode.querySelector('input').value = ""
        }
    </script>

</head>
<body>
	<!-- 팝업배너 -->
    <a href="/member/join">
        <div class="bnrTop">
            지금 가입하고 적립금 3000원 받아가세요! <img src="/img/header/ico_arrow_fff_84x84.jpg" alt="상단배너화살표" width="40" height="auto" style="margin-top: 2px;">
        </div>
    </a>
    <img class="close" id="closeBtn" src="/img/header/close.png" alt="가입하고 혜택받기">
  
    <!-- Top -->
    <div class="container" id="top">
        <div class="row">
            <div class="col-12">
                <div class="header">
                    <div class="top1">
                        <div class="bnr_delivery">
                            <a href="/customer/noticeView">
                                <img src="/img/header/delivery_210801.jpg" width="121" height="auto" alt="샛별,택배 배송안내">
                            </a>
                        </div>
                        <div class="topMenu">
                            <ul>
                                <!-- 로그인 전 -->
                                <li class="join"><a href="/member/memberAgree">회원가입</a></li>
                                <li class="login"><a href="/member/login">로그인</a></li>
                                <!-- //로그인 전 -->
                                <!-- 로그인 후 -->
                                    <!-- <li class="myName"><a href="/mypage/orderList.html?0">홍길동님</a></li>
                                    <li class="logout"><a href="#">로그아웃</a></li> -->
                                <!-- //로그인 후 -->
                                <li class="memberCenter"><a href="/customer/noticeList.html?0">고객센터&nbsp;<img src="/img/header/dropdown_arrow.png" width="10" height="auto" style="margin-top: -3px;"></a>
                                    <ul>
                                        <li><a href="/customer/noticeList.html?0">공지사항</a></li>
                                        <br>
                                        <li><a href="/customer/faqList.html?1">자주하는 질문</a></li>
                                        <br>
                                        <li><a href="/mypage/qnaWrite.html?2">1:1 문의</a></li>
                                        <br>
                                        <li><a href="/customer/eventList.html?3">이벤트</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div> 
                    </div>
                    <div class="top2">
                        <a href="/main">
                            <img src="/img/header/logo.png" width="120" height="auto" alt="로고">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Nav -->
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="nav">
                    <ul class="depth1">
                        <li class="all">
                            <a style="cursor: pointer;">
                                <img id="menu_none" src="/img/header/nav/menu_none.png" alt="전체 카테고리" width="20" height="auto">전체 카테고리
                                <img id="menu_over" src="/img/header/nav/menu_over.png" alt="전체 카테고리" width="20" height="auto">
                            </a>
                            <ul class="depth2">
                                <li>&nbsp;</li>
                                <li><a href="/goodsList"><img src="/img/header/nav/cate_i_01.png" alt="밀키트">밀키트</a>
                                    <ul class="depth3">
                                        <li><a href="#">국물류</a></li><br>
                                        <li><a href="#">파스타/면류</a></li><br>
                                        <li><a href="#">육류/생선류</a></li><br>                                            
                                        <li><a href="#">도시락/밥류</a></li><br>
                                        <li><a href="#">샐러드</a></li><br>
                                        <li><a href="#">분식류</a></li>
                                    </ul>
                                </li>
                                <li><a href="/goodsList"><img src="/img/header/nav/cate_i_02.png" alt="신선식품">신선식품</a>
                                    <ul class="depth3">
                                        <li><a href="#">육류</a></li><br>
                                        <li><a href="#">생선류</a></li><br>
                                        <li><a href="#">김치</a></li><br>                                            
                                        <li><a href="#">채소</a></li><br>
                                        <li><a href="#">과일</a></li><br>
                                        <li><a href="#">유제품</a></li>
                                    </ul>
                                </li>
                                <li><a href="/goodsList"><img src="/img/header/nav/cate_i_03.png" alt="냉동식품">냉동식품</a>
                                    <ul class="depth3">
                                        <li><a href="#">만두</a></li><br>
                                        <li><a href="#">돈까스</a></li><br>
                                        <li><a href="#">치킨</a></li><br>                                            
                                        <li><a href="#">떡류</a></li><br>
                                        <li><a href="#">튀김류</a></li><br>
                                        <li><a href="#">피자</a></li><br>
                                        <li><a href="#">핫도그</a></li>
                                    </ul>
                                </li>
                                <li><a href="/goodsList"><img src="/img/header/nav/cate_i_04.png" alt="건강식품">건강식품</a>
                                    <ul class="depth3">
                                        <li><a href="#">영양제</a></li><br>
                                        <li><a href="#">다이어트</a></li><br>
                                        <li><a href="#">홍삼/인삼/꿀</a></li><br>                                            
                                        <li><a href="#">차</a></li><br>
                                        <li><a href="#">분말/환</a></li><br>
                                        <li><a href="#">건강즙/음료</a></li><br>
                                        <li><a href="#">유산균</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="mealkit"><a href="/goodsList">밀키트</a></li>
                        <li class="fresh"><a href="/goodsList">신선식품</a></li>
                        <li class="frozen"><a href="/goodsList">냉동식품</a></li>
                        <li class="healthy"><a href="/goodsList">건강식품</a></li>
                        <li class="new"><a href="/goodsNewList">신상품</a></li>
                        <li class="best"><a href="/goodsBestList">베스트상품</a></li>
                    </ul>

                                        
                    <!-- 검색창 -->
                    <div class="search">
                        <!-- 검색기능 구현 X  -->
                        <input type="text" id="inputText" placeholder="검색어를 입력해주세요." >
                        <!-- 삭제버튼 검색창 입력전 보이지않다가 입력후 보이는 기능 구현 X  -->
                        <button id="delBtn" onClick="clearInput(this)" ><img src="/img/header/nav/ico_search_del.png" alt=""></button>
                        <input type="image" id="searchBtn" src="/img/header/nav/ico_search_x2.jpg" alt="검색하기" width="30" height="auto">    
                    </div>

                    <!-- 아이콘 -->
                    <div class="event">
                        <a href="/customer/eventList.html?3">
                            <img src="/img/header/nav/event_none.png" onmouseover="this.src='/img/header/nav/event_over.png'" onmouseout="this.src='/img/header/nav/event_none.png'" alt="이벤트">
                        </a>
                    </div>
                    <div class="cart">
                        <a href="/order/cartList">
                            <img src="/img/header/nav/cart_none.png" onmouseover="this.src='/img/header/nav/cart_over.png'" onmouseout="this.src='/img/header/nav/cart_none.png'" alt="장바구니">
                        </a>
                    </div>
                    <div class="mypage">
                        <a href="/mypage/orderList.html?0">
                            <img src="/img/header/nav/mypage_none.png" onmouseover="this.src='/img/header/nav/mypage_over.png'" onmouseout="this.src='/img/header/nav/mypage_none.png'" alt="마이페이지">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="division"></div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
</body>
</html>