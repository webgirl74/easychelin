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
	<title>적립금 추가/삭제</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  
  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


  <!-- CSS -->
  <link href="/css/common.css" rel="stylesheet" type="text/css" />
  <link href="/css/admin/admin_pop.css" rel="stylesheet" type="text/css" />
  <!-- <link href="/css/mypage/goodsQnaWrite.css" rel="stylesheet" type="text/css" /> -->

  <script>
    // 등록취소
    function callCancel() {
      alert("등록이 취소되었습니다.");
      self.close();
      return false;
    } 

  </script>
  
  
</head>

<body>

  <div class="wrap">
    <div class="popupTitle">적립금 추가/삭제</div>  
    
    
    <form action="" method="post" name="" onsubmit="checkValue();">
    <table>
      <col width="12%">
      <col>
      <tr>
        <td><label for="user_idx">아이디<span>*</span></label></td>
        <td>
          <textarea id="user_idx" name="user_idx" required></textarea>
        </td>
      </tr>
      <tr>
        <td><label for="easyPoint_content">금액<span>*</span></label></td>
        <td>
          <input type="text" name="easyPoint_content" id="easyPoint_content" width="200" placeholer="금액을 입력해주세요." required/>
          ※ 적립금 삭감 시  -  입력  (예:  -5000원)

        </td>
      </tr>
      <tr>
        <td><label for="review_subject">적립내용<span>*</span></label></td>
        <td>
          <input type="text" name="review_subject" id="review_subject" placeholer="제목을 입력해주세요." style="width:100%;" required/>
        </td>
      </tr>
      <tr>
        <td colspan="2" class="qnaBtn">
          <input type="image" src="/img/mypage/b_ok.png" onclick="checkValue();">
          <input type="image" src="/img/mypage/b_cancel.png" onclick="callCancel();">
        </td>
      </tr>
      </table>
    </form>
  </div>

</body>
</html>