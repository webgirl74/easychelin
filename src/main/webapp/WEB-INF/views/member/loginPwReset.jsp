<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- CSS -->
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/member/pwReset.css">
   <!-- 메인 -->
    <div class="container">
      <div class="row">
          <div class="col-12">
            <div class="subTitle">비밀번호 재설정</div>
          </div>
      </div>

      <div class="opt3">
        <div class="login_form">
          <form action="loginAction" method="post">
            <table>
              <tr>
                <td class="pwTitle">
                  새 비밀번호 등록
                </td>
              </tr>
              <tr>
                <td>
                  <input type="password" name="" id="newPw1">
                </td>
              </tr>
              <tr>
                <td class="pwInfo">
                  10자이상입력 <br>
                  영문/숫자/특수문자(공백재외)만 허용하며,2개 이상 조합 <br>
                  동일한 숫자 3개 이상 연속 사용 불가
                </td>
              </tr>
              <tr>
                <td class="pwTitle">
                  새 비밀번호 확인
                </td>
              </tr>
              <tr>
                <td>
                  <input type="password" name="" id="newPw2">
                </td>
              </tr>
              <tr>
                <td class="pwInfo">
                  동일한 비밀번호를 입력해 주세요.
                </td>
              </tr>
            </table>
          </form>
          <table>
            <tr>
              <td>
                <input type="image" src="/img/member/login_b_login.png" alt="" value="submit" onclick="return callSub();">
              </td>
            </tr>
          </table>
        </div>
        <!-- 이미지 -->
        <div class="login_banner">
          <img src="/img/member/login_banner.jpg" alt="">
        </div>
      </div>
    </div>