<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- CSS -->
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/member/joinOk.css">
  
  <!-- 메인 -->
    <div class="container">
      <div class="row">
          <div class="col-12">
            <div class="subTitle">회원가입</div>
          </div>
      </div>  
  
      <!-- 스탭 이미지 -->
      <div class="wrap">
  
        <!-- step이미지 -->
        <div><img src="/img/member/step_03.png" alt=""></div>
        
        <!-- 입력폼 -->
        <div class="inputBox">
          <img src="/img/member/check.png" alt="">
          <p>회원가입이 완료되었습니다.</p>
          <p>로그인후 다양한 혜택을 누리세요.</p>
        
          <div>
            <input type="image" src="/img/member/b_login.png"  onclick="return callSub();">
          </div>
        </div>
      </div>
    </div>
    <script>
     function callSub() {
            location.href="/member/login";
            return false;
        }
    </script>