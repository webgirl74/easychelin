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
  <a href="/admin/banner/admin_banner?5?0?banner_cate=1">
      <li id="lists" class="lists none">GNB배너 </li>
  </a>
  <a href="/admin/banner/admin_banner?5?1?banner_cate=2">
      <li id="lists" class="lists none">메인배너1(캐러셀) </li>
  </a>
  <a href="/admin/banner/admin_banner?5?2?banner_cate=3">
      <li id="lists" class="lists none">메인배너2</li>
  </a>
  <a href="/admin/banner/admin_banner?5?3?banner_cate=4">
      <li id="lists" class="lists none">상품카테고리별 배너</li>
  </a>
  <a href="/admin/banner/admin_banner?5?4?banner_cate=5">
      <li id="lists" class="lists none">마이페이지 배너</li>
  </a>
  <a href="/admin/banner/admin_banner?5?5?banner_cate=6">
      <li id="lists" class="lists none">로그인 배너</li>
  </a>
  <a href="/admin/banner/admin_bannerWrite?5?6?">
      <li id="lists" class="lists none">배너등록</li>
  </a>
</ul>