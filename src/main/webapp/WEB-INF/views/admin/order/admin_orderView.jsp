<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이지슐랭 :: 내일의 맛보기, 이지슐랭[관리자]</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <script>

        //글자수 제한(배송요청사항)
        $(document).ready(function() {
            $('#buy_message').on('keyup', function() {
                $('#buy_message_cnt').html("("+$(this).val().length+" / 100)");
        
                if($(this).val().length > 100) {
                    $(this).val($(this).val().substring(0, 100));
                    $('#buy_message_cnt').html("(100 / 100)");
                }
            });
        });

    </script>

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_order.css" rel="stylesheet" type="text/css" />

    

</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_order.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 주문관리 > 주문목록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 주문상세정보 </div>

      <!-- 주문서 관리테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col width="25%">
        <col width="10%" class="labelTxt">
        <col width="20%"> 
        <col width="10%" class="labelTxt">
        <col width="25%"> 
        <tr>
          <th colspan="4">
            <!-- 주문서 수정일자 : buy_stateModify 필드 호출 -->
            | 주문서 관리(주문정보수정일:2021-01-25 23:32:15)
          </th>
          <th colspan="2" style="text-align: right;">
            <input type="button" value="교환진행" onclick="javascript:soon();"> 
            <input type="button" value="주문취소하기" onclick="javascript:soon();">
          </th>
        </tr>
        <tr>
          <td>주문일</td>
          <td>2021-12-25 11:30:21</td>
          <td>주문고객</td>
          <td>홍길동(userId1234)</td>
          <td>주문번호</td>
          <td>0000000000</td>
        </tr>
        <tr>
          <td>결제상태</td>
          <td>
            <select name="buy_paymentState">
              <option value="1">입금대기</option>
              <option value="2" selected>결제완료</option>   
            </select>            
          </td>
          <td>주문처리상태</td>
          <td colspan="3">
            <select name="buy_state">
              <option value="1">주문확인전</option>
              <option value="2">상품준비중</option> 
              <option value="3">배송중</option> 
              <option value="4">배송완료</option> 
            </select>
          </td>
        </tr>
        <tr>
          <td>운송장번호</td>
          <td colspan="5">
            <input type="text" name="buy_deliveryNo" placeholer="송장번호를 입력해 주세요."> 
            <input type="button" value="배송조회">
          </td>
        </tr>
      </table>
      <!-- 주문서관리 테이블 end -->

      <!-- 리스트 테이블 -->
      <!-- 버튼 -->
      <div>| 주문 상품</div>
      <table class="listTable">
        <col width="5%">
        <col>
        <col width="15%">
        <col width="10%">
        <col width="15%">
        <col width="10%">
        <tr>
          <th>번호</th>
          <th>상품정보</th>
          <th>판매가</th>
          <th>수량</th>
          <th>합계금액</th>
          <th>적립금</th>
        </tr>
        <tr>
          <td>2</td>
          <td style="text-align:left;"><img src="/img/order/noImg.png"> [스윗벨런스] 오늘의 샐러드</td>
          <td>6,500원</td>
          <td>2개</td>
          <td>13,000원</td>
          <td>65원</td>
        </tr>
        <tr>
          <td>1</td>
          <td style="text-align:left;"><img src="/img/order/noImg.png"> [스윗벨런스] 오늘의 샐러드</td>
          <td>6,500원</td>
          <td>2개</td>
          <td>13,000원</td>
          <td>65원</td>
        </tr>
      </table>

      <!-- 주문자 정보 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col width="35%">
        <col width="10%" class="labelTxt">
        <col width="35%"> 
        <tr>
          <th colspan="4">| 주문자 정보</th>
        </tr>
        <tr>          
          <td>이름</td>
          <td>
            <input type="text" name="user_name" value="홍길동"> 
          </td>
          <td>휴대폰</td>
          <td>
            <input type="text" name="user_phone" value="010-1234-5678"> 
          </td>
        </tr>
      </table>

      <!-- 수령자 정보 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col width="35%">
        <col width="10%" class="labelTxt">
        <col width="35%"> 
        <tr>
          <th colspan="4">| 수령자 정보</th>
        </tr>
        <tr>          
          <td>이름</td>
          <td>
            <input type="text" name="receive_name" value="홍길동"> 
          </td>
          <td>휴대폰</td>
          <td>
            <input type="text" name="receive_phone" value="010-1234-5678"> 
          </td>
        </tr>
        <tr>
          <td>주소</td>
          <td colspan="3">
            <input type="text" name="receive_zip" value="123-012" readonly> 
            <input type="button" value="배송조회"><br>
            <input type="text" name="receive_add" value="서울특별시 노원구......" style="width:700px;"> 
          </td>
        </tr>
        <tr>
          <td>배송요청사항</td>
          <td colspan="3">
            <textarea id="buy_message" name="buy_message" rows="2" cols="150"></textarea>
            <div id="buy_message_cnt">(0 / 100)</div>
          </td>
        </tr>
      </table>

      <!-- 결제 정보 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col width="25%">
        <col width="10%">
        <col width="45%"> 
        <tr>
          <th colspan="4">| 결제 정보</th>
        </tr>
        <tr>
          <th colspan="2">결제방법 및 금액</th>
          <th rowspan="6"></th>
          <th>결제 로그</th>
        </tr>
        <tr>          
          <td>상품가격</td>
          <td>123,000원</td>
          <td rowspan="5" class="labelTxt">
            <!-- 결제모듈을 통해 결제했을 때 결제모듈에 회신되는 결과값 노출 -->
            결제 요청 결과<br>
            결과 코드 : 0000(성공)<br>
            결과 내용 : 결제 성공<br>
            결제 방법 : 신용카드
          </td>
        </tr>
        <tr>
          <td>적립금 사용</td>
          <td>1,000원</td>          
        </tr>
        <tr>
          <td>배송료</td>
          <td>3,000원</td>          
        </tr>
        <tr>
          <td>총 결제 금액</td>
          <td>
            <!-- 상품가격 - 적립금사용 + 배송료 -->
            125,000원
          </td>          
        </tr>
        <tr>
          <td>결제방법</td>
          <td>신용카드</td>          
        </tr>
      </table>
      <div style="text-align:center;margin-bottom:100px;">
        <input type="submit" value="수정" class="btnSch">
        <input type="submit" value="취소" class="btnSch2">
      </div>

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->