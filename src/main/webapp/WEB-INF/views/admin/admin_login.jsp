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
  <title>이지슐랭 :: 내일의 맛보기, 이지슐랭[관리자]</title>
  
  <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
  <link href="/css/admin/admin_login.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <div class="logo"></div>
  <div class="line"></div>
  <section class="login-form">
    <div class="title">｜ Admin Login</div>
    <form action="/admin/admin_loginAction" method="post">
      <div class="int-area">
        <input type="text" name="user_id" placeholder="아이디를 입력하세요." autocomplete="off" required>
      </div>
      <div class="int-area">
        <input type="password" name="user_pw" placeholder="비밀번호를 입력하세요." autocomplete="off" required>
      </div>
      <div class="login-btn">
        <button type="submit">LOGIN</button>
      </div>
    </form>
  </section>
</body>
</html>