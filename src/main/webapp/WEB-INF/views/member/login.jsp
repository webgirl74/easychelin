<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- CSS -->
  
  <link rel="stylesheet" href="/css/member/login.css">
  <body>
   <!-- 헤더 -->
   <div id="header"></div>
   
    <!-- 메인 -->
    <div class="container">
      <div class="row">
          <div class="col-12">
            <div class="subTitle">로그인</div>
          </div>
      </div>
        
      <div class="opt3">
        <div class="login_form">
          <form action="/member/loginAction" method="post">
            <table>
              <tr>
                <td>
                  <input type="text" name="user_id" id="log_id" placeholder="아이디를 입력하세요." autocomplete="off">
                </td>
              </tr>
              <tr>
                <td>
                  <input type="password" name="user_pw" id="log_pw" placeholder="비밀번호를 입력하세요." autocomplete="off" >
                </td>
              </tr>
              <tr>
                <td>
                  <div class="sch">
                    <div><input class="check" type="checkbox" id="box4" name='check'><label for="box4">&nbsp;&nbsp;보안접속</label></div>
                    <div>
                      <a href="/member/loginIdFind" onclick="window.open(this.href, '_blank', 'width=450, height=330'); return false;">
                      아이디찾기</a>
                      <a href="/member/loginPwFind" onclick="window.open(this.href, '_blank', 'width=450, height=330'); return false;">
                      비밀번호찾기</a>
                      </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>
                  <input type="image" src="/img/member/login_b_login.png" alt="" value="submit">
                </td>
              </tr>
            </table>
          </form>
          <table>
            <tr>
              <td><input type="image" src="/img/member/login_b_join.png" onclick="return callJoin();"></td>
            </tr>
          </table>
        </div>
        <!-- 이미지 -->
        <div class="login_banner">
          <img src="/img/member/login_banner.jpg" alt="">
        </div>
      </div>
    </div>
    
     <script>
      function callJoin() {
        location.href="/member/memberAgree";
        return false;
      }
    </script>