<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

	<!-- 퀵메뉴 스크롤 -->
    <script>
        $(document).ready(function(){
        var currentPosition = parseInt($(".quickMenu").css("top"));
            $(window).scroll(function() {
                var position = $(window).scrollTop(); 
                $(".quickMenu").stop().animate({"top":(position)+currentPosition+"px"},1500);
            });
        });

        // 회원등급안내팝업
        function callGrade() {
            window.open('/mypage/memberGrade', '_blank', 'width=450, height=330'); 
            return false;
        }
    </script>
    
</head>
<body>
	<!-- 최근 본 상품 구현 X -->
    <div class="quickMenu">
        <a href="#"><img src="/img/goods/bnr_quick.jpg" alt="퀵배송안내" width="80" height="auto"></a>
        <ul>
            <li><a href="javascript:callGrade();">등급별 혜택</a></li> 
            <li><a href="/customer/eventList.html?3">이벤트</a></li> 
            <li><a href="/mypage/orderList.html?0">마이페이지</a></li>
        </ul>
    </div>
</body>
</html>