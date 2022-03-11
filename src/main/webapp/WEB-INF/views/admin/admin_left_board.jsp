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
  <a href="/admin/board/admin_noticeList.html?2?0">
      <li id="lists" class="lists none">공지사항 </li>
  </a>
  <a href="/admin/board/admin_goodsQnaList.html?2?1">
      <li id="lists" class="lists none">상품문의 </li>
  </a>
  <a href="/admin/board/admin_qnaList.html?2?2">
      <li id="lists" class="lists none">1:1문의</li>
  </a>
  <a href="/admin/board/admin_reviewList.html?2?3">
      <li id="lists" class="lists none">상품평</li>
  </a>
  <a href="/admin/board/admin_faqList.html?2?4">
      <li id="lists" class="lists none">자주하는 질문</li>
  </a>
  <a href="/admin/board/admin_eventList.html?2?5">
      <li id="lists" class="lists none">이벤트</li>
  </a>
</ul>