<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
    <link rel="stylesheet" href="/css/order/orderOk.css">
    
  </head>
  <body>
    <!-- 헤더 -->
    <c:import url="../header.jsp" />
  
    <!-- 메인 -->
  <div class="container">
    <div class="row">
        <div class="col-12">
          <div class="subTitle">주문완료</div>
        </div>
    </div>

    <!-- 스탭 이미지 -->
    <div class="wrap">

      <!-- step이미지 -->
      <div><img src="/img/order/step_03.png" alt=""></div>
  
      
      <div class="wrap">
          <!-- 입력폼 -->
        <div class="inputBox">
         <h2>홍길동님의 주문이 완료되었습니다.</h2>
         <h2>이용해 주셔서 감사합니다.</h2>
         <p>주문내역은 [마이페이지 > 주문내역] 에서 다시 확인할 수 있습니다.</p>

        <div class="lastOrder">
          <h2>최종결제금액 : 27,800원</h2>
          <div class="point">
            적릭금&nbsp&nbsp +400원
          </div>
          <br>
          적립금은 배송완료 후 구매확정시 적립됩니다.
       </div>
       <div>
        <ul>
          <li>
            <input type="image" onclick="agree();" src="/img/order/b_orderView.png">&nbsp;&nbsp;
            <input type="image" src="/img/order/b_goodsView.png">
          </li>
        </ul>
      </div>
    </div>
  </div>
  </div>
  </div>

    
  <!-- 푸터 -->
    <c:import url="../footer.jsp" />
</body>
</html>
