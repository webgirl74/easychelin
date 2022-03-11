<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- CSS -->
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/member/agree.css">

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
      <div><img src="/img/member/step_01.png" alt=""></div>
      
      <!-- 약관동의 -->
      <div class="agree">
        <ul>
          <li>서비스 이용 약관 동의</li>
          <li>
            <textarea name="" id="" cols="120" rows="7" readonly>이용약관</textarea>
          </li>
          <li>
            <input class="check" type="checkbox" id="box1" name='check' ><label for="box1">&nbsp;&nbsp;동의함(필수)</label>
          </li>
        </ul>

        <ul>
          <li>개인정보보호정책</li>
          <li>
            <textarea name="" id="" cols="120" rows="7" readonly>개인정보보호정책</textarea>
          </li>
          <li>
            <input class="check" type="checkbox" id="box2" name='check' ><label for="box2">&nbsp;&nbsp;동의함(필수)</label>
          </li>
        </ul>

        <ul>
          <li>개인정보위탁동의</li>
          <li>
            <textarea name="" id="" cols="120" rows="7" readonly>개인정보위탁동의</textarea>
          </li>
          <li>
            <input class="check" type="checkbox" id="box3" name='check' ><label for="box3">&nbsp;&nbsp;동의함(필수)</label>
          </li>
        </ul>

        <ul>
          <li>마케팅정보 제공동의</li>
          <li>
            <textarea name="" id="" cols="120" rows="7" readonly>마케팅정보 제공동의</textarea>
          </li>
          <li>
            <input class="check" type="checkbox" id="box4" name='check' ><label for="box4">&nbsp;&nbsp;동의함(필수)</label>
            <br> <br>         
            <input class="check" type="checkbox"id="box5" name='check' value='selectall'onclick='selectAll(this)'/><label for="box5">&nbsp;&nbsp;전체선택</label>          
          </li>
        </ul>
      </div> 

      <div>
        <ul>
          <li>
            <input type="image" onclick="agree();" src="/img/member/b_next.png">&nbsp;&nbsp;
            <input type="image" src="/img/member/b_cancel.png">
          </li>
        </ul>
      </div>
    </div>
  </div>
    <script>
      function agree() {
        //반복문전에 boolean변수에 초기값.
        var isAllCheck = true;
        var checkboxArray = document.getElementsByClassName('check');
        for(var cbx of checkboxArray) {
          if(cbx.checked == false){
            isAllCheck = false;
            break; //반복문을 탈출하는 키워드
            //continue; //반복문의 해당루프를 탈출하는 키워드
          }
        }
        if(isAllCheck == true){
          window.location.href = '/member/memberJoin'
          
        }else{
          alert('이용약관에 모두 동의하셔야 회원으로 가입하실 수 있습니다.');
        }
      }
    </script>

    <script>
      function selectAll(selectAll)  {
      const checkboxes 
          = document.getElementsByName('check');
      
      checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
      })
    }
    </script>