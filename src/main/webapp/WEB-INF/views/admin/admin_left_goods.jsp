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
  <a href="/admin/goods/admin_goodsList?4?0">
      <li id="lists" class="lists none">상품목록 </li>
  </a>
  <a href="/admin/goods/admin_goodsWrite?4?1">
      <li id="lists" class="lists none">상품등록 </li>
  </a>
  <a href="/admin/goods/admin_cateList?4?2">
      <li id="lists" class="lists none">카테고리목록</li>
  </a>
  <a href="/admin/goods/admin_cateWrite?4?3">
      <li id="lists" class="lists none">카테고리등록</li>
  </a>
</ul>