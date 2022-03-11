<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>아이디찾기</title>

  <!-- CSS -->
  <link href="/css/common_popup.css" rel="stylesheet" type="text/css" />
  <link href="/css/member/idFind.css" rel="stylesheet" type="text/css" />

  <script>
    // 비밀번호찾기로 이동
    function callPw() {
      location.href="/member/loginPwFind";
      return false;
    }

    // 팝업창닫고 부모창로그인
    function callLogin() {
      opener.top.location="/member/login";
      self.close();
    }
  </script>
</head>

<body>

  <div class="wrap">
    <div class="popupTitle">아이디찾기</div>
    <div class="comment">
      고객님의 이지슐랭 계정을 찾았습니다.
      <p>아이디 확인 후 로그인해 주세요.</p>
    </div>
    <div>
      <p>
        <img src="/img/member/sch_icon.png" alt="">
        <c:if test="${ not empty find_user_id }">
        <span class="schId">${find_user_id }</span><br>
        <span class="joinDate">가입일 ${find_user_join_date}</span>
        </c:if>
      </p>
    </div>
    
    <div>
      <table>
          <tr>
            <td colspan="2">
              <input type="image" src="/img/member/b_sch_pw.png" alt="" value="" onclick="return callPw();"> 
              <input type="image" src="/img/member/b_sch_login.png" alt="" onclick="return callLogin();">
            </td>
          </tr>
      </table>
    </div>
  </div>

</body>
</html>