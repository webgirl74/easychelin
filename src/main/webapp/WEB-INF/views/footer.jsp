<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이지슐랭 :: 내일의 맛보기, 이지슐랭</title>

<link href="/css/footer.css" rel="stylesheet" type="text/css" />

    <!-- 맨 위로가기 -->
    <script>
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() > 300) {
                    $('#topBtn').fadeIn(); 
                } 
                else {
                    $('#topBtn').fadeOut();
                }
            });
            $("#topBtn").click(function() {
            $('html, body').animate({scrollTop : 0 }, 300);
            return false; });
        });

        // 사업자번호확인
        function onopen()
        {
        var url =
        "http://www.ftc.go.kr/bizCommPop.do?wrkr_no="+frm1.wrkr_no.value;
        window.open(url, "bizCommPop", "width=750, height=700;");
        }

    </script>
    
</head>
<body>
	<div class="footer">
        <br>
        <div class="ftMenu">
            <a href="/company/info">회사소개</a>
            <a href="/service/agreement">이용약관</a>
            <a href="/service/private">개인정보처리방침</a>
            <a href="/customer/noticeList.html?0">고객센터</a>
        </div>

        <br>

        <div class="info">
            <br>
            <p>상호명 : EasyChelin &nbsp;&nbsp;&nbsp; 대표자 : 홍길동 &nbsp;&nbsp;&nbsp; 사업자등록번호 : 000-00-00000 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=0000000000" target="_blank"><img src="/img/footer/noCheck.png" alt="사업자번호조회" style="margin-bottom: 3px;"></a> &nbsp;&nbsp; 통신판매업 신고번호 : 0000-서울노원-0000 &nbsp;&nbsp; 개인정보관리책임자 : 김슐랭</p>
            <p>주소 : (01695) 서울시 노원구 상계로 64 화랑빌딩 7F &nbsp;&nbsp; TEL : 070-000-0000 &nbsp;&nbsp; FAX : (02)000-0000 &nbsp;&nbsp; Email : easychelin@gmail.com</p>
            <br>
            <p>Copyright 2022. <b>EasyChelin</b> All Rights Reserved.</p>
        </div>

        <div id="topBtn">
            <a href="#top"><img src="/img/footer/btn_pagetop.jpg" alt="맨위로 올라가기"></a>
        </div>
    </div>
</body>
</html>