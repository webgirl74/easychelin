<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- CSS -->
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/member/join.css">
  
 <!-- 메인 -->
  <div class="container">
    <div class="row">
        <div class="col-12">
          <div class="subTitle">회원가입</div>
        </div>
    </div>  

    <!-- 스탭 이미지 -->
    <div class="wrap">

      <!-- step이미지 -->
      <div><img src="/img/member/step_02.png" alt=""></div>
      
      <!-- 입력폼 -->
      <div class="inputBox">
        <table>
          <tr>
            <td colspan="2"><span>*</span>필수입력사항</td>
          </tr>

          <form action="/member/memberJoinAction" method="post" name="userInfo" onsubmit="return checkValue();">

            <tr>
              <td><label for="member_id">아이디<span>*</span></label></td>
              <td>
                <input type="text" name="user_id" id="member_id" >
                <img src="/img/member/b_overlap.png" onclick="idCheck();">          
                <input type="hidden" name="user_id_check" id="member_id_check" value="no"> &nbsp;&nbsp;영문 숫자를 조합하여 6~20자 이내로 입력<br>&nbsp;&nbsp;(대소문자 구별. 한글/특수문자 사용 불가)
              </td>
            </tr>
            <tr>
              <td><label for="member_pw">비밀번호<span>*</span></label></td>
              <td>
                <input type="password" name="user_pw" id="member_pw">
                <input type="password" name="user_pw_check" id="member_pw_check">영문, 숫자, 특수문자를 조합하여 8~20자 이내로 입력

              </td>
            </tr>
            <tr>
              <td><label for="member_name">이름<span>*</span></label></td>
              <td>
                <input type="text" name="user_name" id="member_name" >
                한글로 5글자 이내로 입력해주세요.
              </td>
            </tr>
            <tr>
              <td><label for="member_email">이메일<span>*</span></label></td>
              <td>
                <input type="text" name="user_email" id="member_email">
                <img src="/img/member/b_overlap.png" onclick="emailCheck();">              
                <input type="hidden" name="user_email_check" id="member_email_check" value="no">
                <label for="member_email_check">메일 수신(이벤트, 신상품 등 고객님께 혜택이 되는 소식을 알려드립니다.)</label>
                
              </td>
              <tr>
              <td>
              </td>
              <td>
              <input class="check" type="radio"name="user_email_receive"id="box3" value=1><label for="box3">수신동의&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input class="check" type="radio"name="user_email_receive"id="box4" value=0><label for="box4">수신거부</label>
              </td>
              </tr>
            </tr>
            <tr>
              <td><label for="user_phone">휴대폰<span>*</span></label></td>
              <td>
                <input type="text" name="user_phone" id="member_phone">
              </td>
            </tr>
            <tr>
              <td><label for="sample6_postcode">주소<span>*</span></label></td>
              <td>
                <input type="text" name="user_zip"id="sample6_postcode" placeholder="우편번호" readonly>
               
                <input type="image" src="/img/member/b_add.png" onclick="sample6_execDaumPostcode()" >
                <input type="text" name="user_address"id="sample6_address" placeholder="주소" readonly>
                <input type="text" name="user_address"id="sample6_detailAddress" placeholder="상세주소" >
                <input type="text" id="sample6_extraAddress" placeholder="참고항목" readonly>
              </td>
            </tr>
            <tr>
              <td>생년월일</td>
              <td>
                <input type="date" name="user_birth" id="member_birth_date">
              </td>
            </tr>
            <tr>
              <td>성별</td>
              <td>
                  <ul>
                    <li>
                      <input class="check" type="radio"name="user_gender"id="box1" value=1><label for="box1">남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                      <input class="check" type="radio"name="user_gender"id="box2" value=0><label for="box2">여자</label>
                    </li>
                  </ul>
              </td>
            </tr>

          
        </table>      
      </div>
      
      <div>
        <ul>
          <li>
            <input type="image" onclick="return checkValue();" src="/img/member/b_join.png">
            <input type="image" onclick="return callSub();" src="/img/member/b_cancel.png">
          </li>
        </ul>
      </div>
    </form>
  </div>
</div>

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
    
      function checkValue(){
      var id_RegExp =   /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{6,20}$/;//id 유효성 검사 정규식
      var pw_RegExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;//pw 유효성 검사 정규식

      //이메일 유효성검사 정규식
      var e_RegExp =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
      var n_RegExp = /^[가-힣]{2,5}$/; //이름 유효성검사 정규식
      var p_RegExp = /^[0-9]{9,12}$/; // 휴대전화 유효성 검사 정규식
      
      var member_id = document.getElementById("member_id"); //아이디
      var member_pw = document.getElementById("member_pw"); //비밀번호
      var member_pw_check = document.getElementById("member_pw_check"); //비밀번호확인
      var member_name = document.getElementById("member_name"); //이름
      var member_email = document.getElementById("member_email");//메일
      var member_phone = document.getElementById("member_phone");//폰
      var sample6_postcode = document.getElementById("sample6_postcode");//주소
      var sample6_detailAddress = document.getElementById("sample6_detailAddress");//상세주소
  
      
      // ================ ID 유효성검사 ================ //
      
      if(member_id.value==''){
          alert("아이디를 입력해주세요.");
          return false;
      }
      if(!id_RegExp.test(member_id.value)){ //아이디 유효성검사
          alert("아이디를 생성규칙에 맞게 다시입력해주세요.");        
          return false;
      }
      
      // ================ PASSWORD 유효성검사 ===============//
      if(member_pw.value==''){ // 비밀번호 입력여부 검사
          alert("비밀번호를 입력해주세요.");
          return false;
      }
      if(!pw_RegExp.test(member_pw.value)){ //패스워드 유효성검사
          alert("비밀번호를 생성규칙에 맞게 다시입력해주세요.");
          return false;
      }
      
      if(member_pw_check.value!=member_pw.value){ //비밀번호와 비밀번호확인이 동일한지 검사
          alert("비밀번호가 다릅니다. 비밀번호를 다시 입력해주세요.");
          return false;
      }

       // ================ 이름 유효성검사 ================ //        
       if(member_name.value ==''){
          alert("이름을 입력해주세요.");
          return false;
      }
      if(!n_RegExp.test(member_name.value)){
          alert("이름을 작성정책에 맞게 입력해주세요.");
          return false;
      }
      
      // ================ email 유효성검사 ================ //
       if(member_email.value == ''){ // 이메일 입력여부 검사
          alert("이메일을 입력해주세요.");
          return false;
      } 
      
      if(!e_RegExp.test(member_email.value)){ //이메일 유효성 검사
          alert("이메일 주소를 형식에 맞게 입력해주세요.");
          return false;
      }
      
     

      // ================ 휴대폰 유효성검사 ================ //        
      if(member_phone.value ==''){
          alert("휴대폰번호를 입력해주세요.");
          return false;
      }
      if(!p_RegExp.test(member_phone.value)){
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
      
  
        //ajax으로 서버와 통신한다.
        // ajax 용도 : 화면 갱신(reload,redirect)가 없이
        //            부분화면 갱신(통신)을 js에서 한다.
        //           예)네이버 - 실시간검색어, 실시간날씨
      function idCheck() {
        var member_id = $('#member_id').val();
        if(!member_id){
        alert("아이디를 입력하세요.");
        return false;
      }
      // 아이디 유효성 검사(1보다 같거나 크면 중복 / 0 이면 중복안됨)
      $.ajax(
        {
          url: 'http://localhost:8090/member/idCheckAjax?user_id='+ member_id,	
            type: 'get',
            success: function(data) {
              console.log('통신 성공, data:' + data);
              
              var data_num = Number( data );
              if( data_num >= 1 ) {
                //아이디가 중복됨.
                alert("아이디가 중복됩니다.");
              $('#member_id_check').val("no");
              }else{
                //아이디가 중복 안됨. 사용 가능.
                alert("아이디가 사용가능합니다.");
              $('#member_id_check').val("yes");
              }
              
            },
            error: function(){
              console.log('통신 실패');
            }	
        }
      
      );} 
        function emailCheck() {
            var member_email = $('#member_email').val();
            if(!member_email){
            alert("이메일을 입력하세요.");
            return false;
          }
          $.ajax(
                {
                  url: 'http://localhost:8090/member/emailCheckAjax?user_email='+ member_email,	
                    type: 'get',
                    success: function(data) {
                      console.log('통신 성공, data:' + data);
                      
                      var data_num = Number( data );
                      if( data_num >= 1 ) {
                        //아이디가 중복됨.
                        alert("이메일이 중복됩니다.");
                      $('#member_email_check').val("no");
                      }else{
                        //아이디가 중복 안됨. 사용 가능.
                        alert("이메일이 사용가능합니다.");
                      $('#member_email_check').val("yes");
                      }
                      
                    },
                    error: function(){
                      console.log('통신 실패');
                    }	
            }
          
          );} 
      // 취소버튼
      function callSub() {
        location.href="/main";
        return false;
      }
    </script>
  