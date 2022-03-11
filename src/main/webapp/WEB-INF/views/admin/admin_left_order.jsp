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
  <a href="/admin/order/admin_orderList?1?0">
      <li id="lists" class="lists none">주문목록 </li>
  </a>
  <a href="javascript:soon();">
      <li id="lists" class="lists none">주문취소목록 </li>
  </a>
  <a href="javascript:soon();">
      <li id="lists" class="lists none">교환/반품 신청목록</li>
  </a>
</ul>