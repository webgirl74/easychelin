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
	<title>회원주문내역</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  
  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


  <!-- CSS -->
  <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
  <link href="/css/admin/admin_pop.css" rel="stylesheet" type="text/css" />
  <link href="/css/admin/admin_member.css" rel="stylesheet" type="text/css" />

  <script>
    // 팝업창닫고 부모창주문상세페이지로
    function callOrder() {
      opener.top.location="/admin/order/admin_orderView.html";
      self.close();
    }

  </script>
  
  
</head>

<body>

  <div class="wrap">
    <div class="popupTitle">회원주문내역</div>  
    
        
    <table>
      <col width="5%">
      <col width="15%">
      <col width="15%">
      <col>
      <col width="15%">
      <tr>
        <td colspan="6">아이디 : {회원아이디}</td>
      </tr>
      <tr>
        <th>
          <!-- 클릭 시 전체 석택기능 넣어주세요. -->
          <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>          
        </th>
        <th>주문번호</th>
        <th>주문일</th>
        <th>주문상품</th>
        <th>결제금액</th>
      </tr>
      <tr>
        <td>
          <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
        </td>
        <td><a href="javascript:callOrder();">0000000000</a></td>
        <td>2022-02-01</td>
        <td>[스윗벨런스] 오늘의 샐러드 6종 외 1건</td>
        <td>115,000</td>
      </tr>
      </table>            
  </div>
  
  <!-- 하단버튼/페이지네이션 -->
  <div class="bottom">
    <!-- 버튼 -->
    <div>&nbsp;&nbsp;
      <input type="button" value="선택삭제"> 
    </div>
    <div class="pagination">
      <a href="#"><<</a>
      <a href="#"><</a>
      <a href="#">1</a>
      <a href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#">6</a>
      <a href="#">></a>
      <a href="#">>></a>
    </div>
  </div>
</body>
</html>