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

  <!-- <script>
    function callSub() {
      location.href="/member/loginIdFindOk";
      return false;
    }
  </script> -->
  
</head>

<body>

  <div class="wrap">
    <div class="popupTitle">아이디찾기</div>
    <div class="comment">가입시 등록하신 정보를 입력해 주세요!</div>
    <div>
      <table>
       <form action="/member/idFindAction" method="post">
          <tr>
            <td><label for="idfind_name">이름</label></td>
            <td><input type="text" name="user_name" id="idfind_name" placeholder="이름을 입력하세요." autocomplete="off"></td>
          </tr>
          <tr>
            <td><label for="idfind_email">이메일</label></td>
            <td><input type="text" name="user_email" id="idfind_email" placeholder="이메일을 입력하세요." autocomplete="off"></td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="image" src="/img/member/b_ok.png" alt="" value="submit" ">
            </td>
          </tr>
        </form>
      </table>
    </div>
  </div>

</body>
</html>