<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 
  
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

    <!-- CSS -->
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/order/cartList.css">
    
  </head>
  <body>
   <!-- 헤더 -->
    <c:import url="../header.jsp" />
  
    <!-- 메인 -->
  <div class="container">
    <div class="row">
        <div class="col-12">
          <div class="subTitle">장바구니</div>
        </div>
    </div>

    <!-- 스탭 이미지 -->
    <div class="wrap">

      <!-- step이미지 -->
      <div><img src="/img/order/step_01.png" alt=""></div>

      <form action="/order/cartListAction"  name="cartListAction">
        <!-- 상단 상품 선택/삭제기능 -->
          <div class="cartSelect">
            <div class="inner_select">
             <label class="check">
              <input type="checkbox" name="checkAll" checked="">
              <span class="ico"></span> 전체선택 (4/4)
              </label>
              <a href="" class="btn_delete">선택 삭제</a>
            </div>
          </div>

        <!-- 장바구니 목록 -->
        <div class="cartList">
        <table>
          <tr class="productInfo">
            <th>
              <label class="check">
              <input type="checkbox" name="checkAll" checked="">
              <span class="ico"></span>
              </label>
            </th>
            <th class="innerInfo">
              <img class="productImg" src="/img/order/164315915557i0.webp" alt="">
              <span class="productName">[한팟] 치즈 부대찌개 1858g</span>
              <div class="productNum">
                <a onclick="minusclick('valuecount1');"><img src="/img/order/ico_minus.svg" alt=""></a>
                <a id="valuecount1">1</a>
                <a onclick="plusClick('valuecount1');"><img src="/img/order/ico_plus_on.svg" alt=""></a>
              </div>

              <span class="price">10,500원</span>
              <img class="closeImg" src="/img/order/ico_delete.svg">
            </th>
          </tr>

          <tr class="productInfo">
            <th>
            <label class="check">
            <input type="checkbox" name="checkAll" checked="" style="font-size: 0;">
            <span class="ico"></span>
            </label>
            </th>
            <th class="innerInfo">
            <img class="productImg" src="/img/order/1452062432259i0.webp" alt="">
            <div class="productName">[데체코] 스파게티</br>
            <span class="innerName">[데체코] 롱 파스타 6종</span>
            </div>
            <div class="productNum">
              <a onclick="minusclick('valuecount2');"><img src="/img/order/ico_minus.svg" alt=""></a>
              <a id="valuecount2">1</a>
              <a onclick="plusClick('valuecount2');"><img src="/img/order/ico_plus_on.svg" alt=""></a>
            </div>

            <span class="price">3,500원</span>
            <img class="closeImg" src="/img/order/ico_delete.svg">
          </th>
          </tr>

          <tr class="productInfo">
            <th>
            <label class="check">
            <input type="checkbox" name="checkAll" checked="" style="font-size: 0;">
            <span class="ico"></span>
            </label>
            </th>
            <th class="innerInfo">
            <img class="productImg" src="/img/order/1452062432259i0.webp" alt="">
            <div class="productName">[데체코] 라자냐</br>
            <span class="innerName">[데체코] 롱 파스타 6종</span>
            </div>
            <div class="productNum">
              <a onclick="minusclick('valuecount3');"><img src="/img/order/ico_minus.svg" alt=""></a>
              <a id="valuecount3">1</a>
              <a onclick="plusClick('valuecount3');"><img src="/img/order/ico_plus_on.svg" alt=""></a>
            </div>
            <span class="price">4,000원</span>
            <img class="closeImg" src="/img/order/ico_delete.svg">
          </th>
          </tr>

          <tr class="productInfo">
            <th>
              <label class="check">
              <input type="checkbox" name="checkAll" checked="">
              <span class="ico"></span>
              </label>
            </th>
            <th class="innerInfo">
              <img class="productImg" src="/img/order/1637922333261i0.webp" alt="">
              <span class="productName">[에머이] 소고기 쌀국수 키트 (2인분)</span>
              <div class="productNum">
                <a onclick="minusclick('valuecount1');"><img src="/img/order/ico_minus.svg" alt=""></a>
                <a id="valuecount1">1</a>
                <a onclick="plusClick('valuecount1');"><img src="/img/order/ico_plus_on.svg" alt=""></a>
              </div>
              <span class="price">9,800원</span>
              <img class="closeImg" src="/img/order/ico_delete.svg">
            </th>
          </tr>
        </table>
        </div>

        <!-- 계산서 -->
        <div class="cart_result">
          <div class="inner_result">
            <div class="amount_view">
              <dl class="amount">
                <dt class="tit">상품금액</dt>
                <dd class="price">
                  <span class="num">27,800</span>
                  <span class="won">원</span>
                </dd>
             </dl>
             <dl class="amount">
               <dt class="tit">상품할인금액</dt>
               <dd class="price">
                <span class="num">-3,000</span>
                <span class="won">원</span>
               </dd>
            </dl>
              <dl class="amount">
                <dt class="tit">배송비</dt>
                <dd class="price">
               <span class="num plus">+3,000</span>
               <span class="won">원</span>
               </dd>
             </dl>
             <dl class="amount_lst">
               <dt class="tit">결제예정금액</dt>
                <dd class="price">
                <span class="num">27,800</span>
                <span class="won">원</span>
               </dd>
             </dl>
             <div class="reserve">
             <span class="bage">구매확정 시 100원 적립</span>
             </div>
            </div>
            <div class="btn_submit">
              <button type="submit" class="btn_active">주문하기</button>
            </div>
          </div>
        </div>

        <!-- 하단 상품 선택/삭제기능 -->
          <div class="cartSelect">
            <div class="inner_select">
              <label class="check">
              <input type="checkbox" name="checkAll" checked="" style="font-size: 0;margin-right : 10px;">
              <span class="ico"></span>전체선택 (4/4)
              </label>
              <a href="" class="btn_delete">선택 삭제</a>
            </div>
          </div>
 
        </div>

      </form>


</div>
    </div>
   <!-- 푸터 -->
    <c:import url="../footer.jsp" />
</body>
<script>
  function minusclick(value1){
    let getvalue = document.getElementById(value1)
    let changeCount = getvalue.innerText
    let changeCount2 = changeCount*=1
    if (changeCount2 ==1){

    }else{
      getvalue.innerHTML = changeCount2 -1
    }
    
  }
  function plusClick(value1){
    let getvalue = document.getElementById(value1)
    let changeCount = getvalue.innerText
    let changeCount2 = (changeCount*=1) +1;
    getvalue.innerHTML = changeCount2
  }
</script>
</html>