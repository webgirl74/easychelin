<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이지슐랭 :: 내일의 맛보기, 이지슐랭</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="js/jquery-2.2.4.min.js"></script>

    <script>
        $(document).ready(function(){
            $('#header').load("/header.html");
            $('#quickMenu').load("/quickMenu.html");
            $('#footer').load("/footer.html");
        });

        function callSub() {
            location.href="/member/login.html";
            return false;
        }
    </script>

    <!-- CSS -->
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/member/joinOk.css">

  </head>
  <body>
    <!-- 헤더 -->
    <div id="header"></div>
  
    <!-- 메인 -->
    <div class="container">
      <div class="row">
          <div class="col-12">
            <div class="subTitle">주문서 배송정보 수정</div>
          </div>
      </div>  
  
      <!-- 스탭 이미지 -->
      <div class="wrap">
  
        <!-- 입력폼 -->
        <div class="inputBox">
          <div>
            <table>
              
            </table>
          </div>
        </div>
      </div>

    
  <!-- 푸터 -->
  <div id="footer"></div>
</body>
</html>
