<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
    // 자바스크립트로 현재url의 파라미터만 가져오기
    // 링크뒤에 가져오는 파아미터값으로 left현재메뉴 활성화
    var para = document.location.href.split("?"); 
    var listsObject = document.getElementsByClassName('lists');
    listsObject[para[2]].classList.remove('none');
    listsObject[para[2]].classList.add('active');

    function soon(){
      alert("준비중입니다.");
    }
</script>

<ul class="list-menu">
  <a href="/admin/info/admin_infoAgreement?7?0">
      <li id="lists" class="lists none">약관관리 </li>
  </a>
  <a href="/admin/info/admin_infoPrivate?7?1">
      <li id="lists" class="lists none">정책관리 </li>
  </a>
  <a href="javascript:soon();">
      <li id="lists" class="lists none">결제방법설정</li>
  </a>
</ul>