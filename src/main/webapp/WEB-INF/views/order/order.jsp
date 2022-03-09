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
    <link rel="stylesheet" href="/css/order/order.css">
  </head>
  <body>
   <!-- 헤더 -->
    <c:import url="../header.jsp" />
  
    <!-- 메인 -->
  <div class="container">
    <div class="row">
        <div class="col-12">
          <div class="subTitle">주문서</div>
        </div>
    </div>

    <!-- 스탭 이미지 -->
    <div class="wrap">

      <!-- step이미지 -->
      <div><img src="/img/order/step_02.png" alt=""></div>


    <form action="" method="post">
      <div class="container">
        <div class="main_1">
        <div class="row">
            <div class="member_1">
              <div class="sub"><span>|</span>   주문자 정보</div>
              <table>
                <tr>
                  <td class="td_1">
                    보내는 분
                  </td>
                  <td>
                    홍길동
                  </td>
                </tr>

                <tr>
                  <td class="td_1">
                    연락처 
                  </td>
                  <td>
                    010-1234-5678
                  </td>
                </tr>

                <tr>
                  <td class="td_1">
                    이메일
                  </td>
                  <td>
                    tast@naver.com
                    <p>이메일을 통해 주문처리 과정을 보내드립니다.</p>
                  </td>
                </tr>
              </table>

            </div>
            </div>

            <div class="container">
              <div class="">
              <div class="row">
                  <div class="order_1">
                    <div class="sub"><span>|</span>   배송 정보
                      <a href="/order/addModify.html" onclick="window.open(this.href, '_blank', 'width=700, height=500'); return false;">
                        <input class="add" type="image" src="/img/order/b_addModify.png" alt="">
                      </a>
                    </div>
                    <table>
                      <tr>
                        <td class="td_1">
                          배송지
                        </td>
                        <td>
                          서울 노원구 통일로123
                        </td>
                      </tr>
      
                      <tr>
                        <td class="td_1">
                          받는분 
                        </td>
                        <td>
                          홍길동
                        </td>
                      </tr>
      
                      <tr>
                        <td class="td_1">
                          연락처
                        </td>
                        <td>
                          010-1234-5678
                        </td>
                      </tr>

                      <tr>
                        <td class="td_1">
                          요청사항
                        </td>
                        <td>
                          문앞 : 현관비밀번호 #1234
                        </td>
                      </tr>
                    </table>
                  </div>
                  </div>
                  </div>
                </div>
                </div>

<!--  -->
<div class="container">
  <div class="main_1">
  <div class="row">
      <div class="main_2">
        <div class="sub"><span>|</span>   쿠폰/적립금</div>
        <table>
          <tr>
            <td class="td_1">
              쿠폰적용
            </td>
            <td>
              <select class="size" name="" id="">
                <option value="0" selected>========선택========</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
            </td>
          </tr>

          <tr>
            <td class="td_1">
             적립금 사용
            </td>
            <td class="point_0">
             <input type="text" placeholder="0">&nbsp;&nbsp;&nbsp;<input type="button" value="모두사용"> <br>
             보유적립금 0원 (보유적립금 100원 이상부터 사용가능)
            </td>
          </tr>
       </table>

       <div class="sub"><span>|</span>   결제수단
        <span class="checkbox"><input type="checkbox" id="box4" name='check'><label for="box4">선택한 결제수단을 다음에도사용</label></span>
       </div>
        <table>
          <tr>
            <td class="td_1">
              결제수단선택
            </td>
            <td class="payment">
              <div class="kakao"><input type="image" src="/img/order/ico_kakao-pay.webp" alt=""></div>
              <div class="p_1">
              <div class="Pay"><input class="check" type="radio"id="box1" name="a"><label for="box1">신용카드</label> </div>
              <div class="Pay"><input class="check" type="radio"id="box2" name="a"><label for="box2">간편결제</label></div>
              <div class="Pay"><input class="check" type="radio"id="box3" name="a"><label for="box3">휴대폰</label></div>
            </div>
              <!-- 신용카드 -->
              <div class="CreditCard box_a" >
                <select class="size" name="" id="">
                  <option value="0" selected>카드를 선택해 주세요.</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                </select>
                <br>
                <select class="size" name="" id="">
                  <option value="0" selected>할부기간을 선택해 주세요.</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                </select>
              </div>
              <!-- 간편결제 -->
              <div class="easyPayment box_b">
                <div class="a1">
                <ul>
                  <li>
                    <input class="check" type="radio"id="box10" name="b"><label for="box10">차이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input class="check" type="radio"id="box11" name="b"><label for="box11">토스</label><br>
                    <input class="check" type="radio"id="box12" name="b"><label for="box12">네이버페이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input class="check" type="radio"id="box13" name="b"><label for="box13">페이코</label><br>
                    <input class="check" type="radio"id="box14" name="b"><label for="box14">스마일</label>
                    </li>
                </ul>
              </div>
                <div class="a2">
                  <p>차이 <br>
                  2만원 이상 생에 첫 결제 시 3천원 즉시할인</p>
                  <ul>
                    <li>2/3 11시~ 2/28 24시, 기간 내 차이 ID당 1회, 선착순</li>
                  </ul>
                  <br>
                  <p>토스 <br>
                  1만원 이상 생애 첫 결제 시, 1천원 캐시백 즉시적립</p>
                  <ul>
                    <li>1/3 11시~ 2/28 24시, 기간 내 토스 ID당 1회, 선착순</li>
                  </ul>
                  <br>
                  <p>페이코 <br>
                  페이코 최대 5% 적립 + 1천원 할인쿠폰</p>
                  <ul>
                    <li>(1)최대5%적립</li>
                    <li>1/3 11시~ 2/28 24시</li>
                    <li>페이코 충전포인트로 결제할 때 마다 페이코 포인트 최대 5%적립(건당 최대 1,000P)</li>
                    <li>(2) 1천원 할인 쿠폰(15,000원 이상 구매시)</li>
                    <li>1/3 11시~ 2/28 24시</li>
                    <li>페이코 앱 내 쿠폰영역에서 이지슐랭 쿠폰 다운로드(1일 ID당 1회)</li>
                  </ul>
                </div>
              </div>
              <!-- 휴대폰 -->
              <div class="phone box_c">

              </div>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <p>※카카오페이,차이,토스,네이버페이,페이코 결제 시, 결제되신 수단으로만 환불되는점 양해부탁드립
              <p>※고객님은 안전거래를 위해 현금등으로 결제시 저희 쇼핑몰에서 가입한  토스 페이먼츠의 구매안전(에스크로) 서비스를 이용하실수 있습니다.</p>
            </td>
          </tr>
       </table>

       <div class="sub"><span>|</span>   개인정보/수집정보
        
      </div>
       <table>
         <tr>
           <td>
             <input class="check" type="checkbox" id="box5" name='check'required><label for="box5">결제진행 필수동의</label>
           </td>
         </tr>
         <tr>
           <td>
             개인정보 수집 이용 및 처리 동의(필수)&nbsp;&nbsp;&nbsp;<a href="">보기></a>
           </td>
         </tr>
         <tr>
          <td>
            전자지급 결제대행 서비스이용약관 동의(필수)>&nbsp;&nbsp;&nbsp;<a href="">보기></a>
          </td>
        </tr>
      </table>

       

      </div>
      </div>





      <div class="container">
        <div class="row1">
            <div class="order_2">
             <div class="in_order">
              <table>
                <tr>
                  <td class="bold">
                    주문금액
                  </td>
                  <td class="bold right">
                    24,800원
                  </td>
                </tr>
 
                <tr>
                 <td class="tb_s">
                   └상품금액
                 </td>
                 <td class="tb_s right">
                   27,800원
                 </td>
               </tr>
 
               <tr>
                <td class="tb_s">
                   └할인금액
                 </td>
                 <td class="tb_s right">
                   3,000원
                 </td>
               </tr>
 
               <tr>
                <td class="bold">
                  배송비
                 </td>
                 <td class="bold right">
                   +3,000원
                 </td>
               </tr>
 
               <tr>
                <td class="bold">
                  쿠폰할인금액
                 </td>
                 <td class="bold right">
                   0원
                 </td>
               </tr>
 
               <tr>
                <td class="bold">
                  적립금사용
                 </td>
                 <td class="bold right">
                  0원
                 </td>
               </tr>
              </table>
              <span class="bold"> 최종결제금액    27,800원</span>
              <div class="point">구매확정시 100원 적립</div>
             </div>
             
             </div>
             <div><input type="image" src="/img/order/b_payment.png" alt="" value="submit"></div>
            </div>
            </div>
          </div>
          </div>
        </form>

</div>
</div>
</div>
    </div>
   <!-- 푸터 -->
    <c:import url="../footer.jsp" />
  <script>
    
    $("input:radio[name='a']").on("change", function() {
        switch (this.id) {
            case "box1":
                $(".box_a").show();
                $(".box_b").hide();
                $(".box_c").hide();
               
                break;
            case "box2":
                $(".box_a").hide();
                $(".box_b").show();
                $(".box_c").hide();
               
                break;
              case "box3":
                $(".box_a").hide();
                $(".box_b").hide();
                $(".box_c").show();
               
                break;
               
            default:
                break;
        }
    });
       </script>
</body>
</html>
