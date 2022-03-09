<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- 부트 스트랩 CDN -->    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"><!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"><!-- 부가적인 테마 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script><!-- 합쳐지고 최소화된 최신 자바스크립트 -->

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

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function sample6_execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function(data) {
        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        var addr = ''; // 주소 변수
        var extraAddr = ''; // 참고항목 변수

        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            addr = data.roadAddress;
        } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
        }

        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
        if(data.userSelectedType === 'R'){
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraAddr !== ''){
                extraAddr = ' (' + extraAddr + ')';
            }
            // 조합된 참고항목을 해당 필드에 넣는다.
            document.getElementById("sample6_extraAddress").value = extraAddr;
        
        } else {
            document.getElementById("sample6_extraAddress").value = '';
        }

        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        document.getElementById('sample6_postcode').value = data.zonecode;
        document.getElementById("sample6_address").value = addr;
        // 커서를 상세주소 필드로 이동한다.
        document.getElementById("sample6_detailAddress").focus();
      }
    }).open();
  }
  </script>
  <script>
 function checkValue(){
      var id_RegExp =   /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{6,20}$/;//id 유효성 검사 정규식
      var pw_RegExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;//pw 유효성 검사 정규식

      //이메일 유효성검사 정규식
      var e_RegExp =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
      var n_RegExp = /^[가-힣]{2,5}$/; //이름 유효성검사 정규식
      var p_RegExp = /^[0-9]{9,12}$/; // 휴대전화 유효성 검사 정규식
      
     
      var order_name = document.getElementById("order_name"); //이름
     
      var order_phone = document.getElementById("order_phone");//폰
      var sample6_postcode = document.getElementById("sample6_postcode");//주소
      var sample6_detailAddress = document.getElementById("sample6_detailAddress");//상세주소
  

       // ================ 이름 유효성검사 ================ //        
       if(order_name.value ==''){
          alert("이름을 입력해주세요.");
          return false;
      }
      if(!n_RegExp.test(order_name.value)){
          alert("이름을 작성정책에 맞게 입력해주세요.");
          return false;
      }
      
    
      // ================ 휴대폰 유효성검사 ================ //        
      if(order_phone.value ==''){
          alert("휴대폰번호를 입력해주세요.");
          return false;
      }
      if(!p_RegExp.test(order_phone.value)){
          alert("번호만 입력해주세요.");
          return false;
      }

      // ================ 주소 유효성검사 ================ //        
      if(sample6_postcode.value ==''){
          alert("주소를 입력해주세요.");
          return false;
      }
      
      // ================ 상세주소 유효성검사 ================ //        
      if(sample6_detailAddress.value ==''){
          alert("상세주소를 입력해주세요.");
          return false;
      }

      return true; //submit전송됨.
    }
  </script>





    <!-- CSS -->
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/order/orderCheck.css">
    
  </head>
  <body>
  
    <!-- 메인 -->
    <div class="container">
      <div class="row">
          <div class="">
            <div class="subTitle"><span>|</span>주문서-배송 정보 수정</div>
          </div>
      </div>  
  
      
     
          <!-- 입력폼 -->
          <div class="container">
            <div class="row">
                <div class="">
                  <div class="subTitle">|배송정보</div>
                </div>
            </div>  
              <div class="wrap"></div> 
              <form action=# method="post" name="userInfo" onsubmit="return checkValue();">
                  <table>
                    <tr>
                      <td>
                         받으실 분<span class="star">*</span>
                      </td>
                     </tr>
                      <tr>
                        <td>
                          <input type="text" name="order_name" id="order_name">
                        </td>
                      </tr>
                      <tr>
                        <td>
                          연락처<span class="star">*</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <input type="text" name="order_phone" id="order_phone">
                        </td>
                      </tr>
                      <tr>
                        <td>
                          주소<span class="star">*</span>
                        </td>
                      </tr>
                
                      <tr>
                       <td>
                        <input type="text" id="sample6_postcode" placeholder="우편번호" readonly>
                        <!-- <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"> -->
                        <input type="image" src="/img/member/b_add.png" onclick="sample6_execDaumPostcode()" ><br>
                        <input type="text" id="sample6_address" placeholder="주소" readonly>
                        <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" readonly>
                       </td>
                      </tr>

                      <tr>
                        <td>
                          받으실 장소<span class="star">*</span>
                        </td>
                      </tr>
                        <td>
                            <ul>
                              <li>
                               <input class="check" type="radio"id="box1" name="a" checked required /><label for="box1">문앞&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input class="check" type="radio"id="box2" name="a"><label for="box2">택배함&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                <input class="check" type="radio"id="box3" name="a"><label for="box3">경비실&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                               <input class="check" type="radio"id="box4" name="a"><label for="box4">기타&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                              </li>
                            </ul>
                            <div class="location">
                              <div class="box_a">
                                <input type="text" name="" id="" placeholder="세부사항" autocomplete="off">
                            </div>
                             
                            <div class="box_b">
                              <input type="text" name="" id="" placeholder="택배함 위치/택배함 번호/비밀번호" autocomplete="off">
                            </div>
                        
                            <div class="box_c">
                              <input type="text" name="" id="" placeholder="경비실위치등 특이사항있을시 적어주세요." autocomplete="off">
                          </div>
                        
                          <div class="box_d">
                            <input type="text" name="" id="" placeholder="예:계단 밑,주택단지 앞 경비초소를 지나 A동출입구" autocomplete="off">
                        </div>
                            </div>
                          </td>
              
              
                        <tr>
                          <td>
                            공동현관 출입방법<span class="star">*</span>
                          </td>
                        </tr>
                            <td>
                              <ul>
                                <li>
                                  <input class="check" type="radio"id="box5" name="b"required /><label for="box5">공동현관 비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                  <input type="text">
                                  <input class="check" type="radio"id="box6" name="b"><label for="box6">자유 출입 가능&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    
                                </li>
                              </ul>
                            </td>
           
                  </table>
                    <div class="but">
                      <input type="image" src="/img/member/b_ok.png" alt="" value="submit">
                    </div>
              
            </form>
        </div>  
  </div>
  </div>

  <script>
    
    $("input:radio[name='a']").on("change", function() {
        switch (this.id) {
            case "box1":
                $(".box_a").show();
                $(".box_b").hide();
                $(".box_c").hide();
                $(".box_d").hide();
                break;
            case "box2":
                $(".box_a").hide();
                $(".box_b").show();
                $(".box_c").hide();
                $(".box_d").hide();
                break;
              case "box3":
                $(".box_a").hide();
                $(".box_b").hide();
                $(".box_c").show();
                $(".box_d").hide();
                break;
                case "box4":
                $(".box_a").hide();
                $(".box_b").hide();
                $(".box_c").hide();
                $(".box_d").show();
                break;
            default:
                break;
        }
    });
       </script>


</body>
</html>
