<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
    // 자바스크립트로 현재url의 파라미터만 가져오기
    // 링크뒤에 가져오는 파아미터값으로 left현재메뉴 활성화
    var para = document.location.href.split("?"); 
    var listsObject = document.getElementsByClassName('lists');
    listsObject[para[2]].classList.remove('none');
    listsObject[para[2]].classList.add('active');
    console.log('para');

    function soon(){
      alert("준비중입니다.");
      /* console.log(para[1]); */
    }
</script>

<ul class="list-menu">
  <a href="/admin/member/admin_memberList?0?0">
      <li id="lists" class="lists none">회원목록 </li>
  </a>
  <a href="/admin/member/admin_memberOut?0?1">
      <li id="lists" class="lists none">탈퇴회원목록 </li>
  </a>
  <a href="/admin/member/admin_easyPointList?0?2">
      <li id="lists" class="lists none">적립금내역</li>
  </a>
  <a href="javascript:soon();">
      <li id="lists" class="lists none">메일관리</li>
  </a>
  <a href="javascript:soon();">
      <li id="lists" class="lists none">대량메일발송</li>
  </a>
</ul>