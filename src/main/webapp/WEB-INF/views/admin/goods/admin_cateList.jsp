<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이지슐랭 :: 내일의 맛보기, 이지슐랭[관리자]</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <script>
    
    	/* 전체선택 */
	    function selectAll(selectAll)  {
	    	const checkboxes 
	    	     = document.getElementsByName('category');
	    	  
	    	checkboxes.forEach((checkbox) => {
	    	  checkbox.checked = selectAll.checked;
	    	})
    	}
	    

    </script>

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_goods.css" rel="stylesheet" type="text/css" />

    
</head>
<body>
  <!-- 헤더 -->
  <c:import url="../admin_gnb.jsp" />  
  
  
  <div class="adminBox">
    <!-- left Menu -->
    <div class="aside"><c:import url="../admin_left_goods.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 상품관리 > 카테고리목록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 카테고리목록 </div>

      <!-- 검색테이블 -->
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="45%">
        <col width="10%" class="labelTxt">
        <col width="45%"> 
        <tr>
          <td>카테고리 선택</td>
          <td>
            <select name="schName">
              <option value="">선택하세요.</option>
              <option value="1">밀키트</option>
              <option value="2">신선식품</option>              
              <option value="3">냉동식품</option>                         
              <option value="4">건강식품</option>
            </select>
            <input type="submit" value="검색" class="btnSch">
          </td>
        </tr>
      </table>
      <!-- 검색테이블 end -->

<%--       <!-- 리스트 테이블 -->
      <table class="listTable">
        <col width="10%">
        <col width="10%">
        <col width="20%">
        <col width="20%">
        <col>
        <col width="10%">
        <tr>
          <th>
            <!-- 클릭 시 전체 선택기능 넣어주세요. -->
            <input type="checkbox" name="selectAll" id="check" value="selectAll" onclick='selectAll(this)'><label for="check">&nbsp;</label>     
          </th>
          <th>번호</th>
          <th>1차 카테고리명</th>
          <th>2차 카테고리번호</th>
          <th>2차 카테고리명</th>
          <th>등록일</th>
        </tr>
        <c:forEach var="dto" items="${ goodsCate_list }" varStatus="status">
          <tr>
          	  <td><input type="checkbox" name="category" id="${ dto.goodsCate2_idx }" value="${ dto.goodsCate2_idx }"><label for="${ dto.goodsCate2_idx }">&nbsp;</label></td>
	          <td>${ status.count }</td>
	          <td>
	              <c:set var="goodsCate1_name" value="${ dto.goodsCate1 }" />
	              <c:if test="${dto.goodsCate1 eq 1}">
			 	      밀키트
	              </c:if>
	              <c:if test="${dto.goodsCate1 eq 2}">
			          신선식품
	              </c:if>
	              <c:if test="${dto.goodsCate1 eq 3}">
			 	      냉동식품
	              </c:if>
	              <c:if test="${dto.goodsCate1 eq 4}">
			   	      건강식품
	              </c:if>
	          </td>
	          <td>${ dto.goodsCate2_idx }</td>
	          <td>${ dto.goodsCate2_name }</td>
	          <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ dto.goodsCate2_date }" /></td>
      	  </tr>
        </c:forEach>
	  </table> --%>
	  
	  <!-- 리스트 테이블2 -->
      <table class="listTable">
        <col width="10%">
        <col width="10%">
        <col width="20%">
        <col width="20%">
        <col>
        <col width="10%">
        <tr>
          <th>번호</th>
          <th>1차 카테고리명</th>
          <th>2차 카테고리번호</th>
          <th>2차 카테고리명</th>
          <th>등록일</th>
          <th colspan="2"></th>
        </tr>
        <c:forEach var="dto" items="${ goodsCate_list }" varStatus="status">
          <tr>
	          <td>${ status.count }</td>
	          <td>
	              <c:set var="goodsCate1_name" value="${ dto.goodsCate1 }" />
	              <c:if test="${dto.goodsCate1 eq 1}">
			 	      밀키트
	              </c:if>
	              <c:if test="${dto.goodsCate1 eq 2}">
			          신선식품
	              </c:if>
	              <c:if test="${dto.goodsCate1 eq 3}">
			 	      냉동식품
	              </c:if>
	              <c:if test="${dto.goodsCate1 eq 4}">
			   	      건강식품
	              </c:if>
	          </td>
	          <td>${ dto.goodsCate2_idx }</td>
	          <td>${ dto.goodsCate2_name }</td>
	          <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ dto.goodsCate2_date }" /></td>
	          <td>
	          	<a href="admin_cateModify?goodsCate2_idx=${dto.goodsCate2_idx}" onclick="window.open(this.href, '_blank', 'width=800, height=435'); return false;">수정</a>
	          </td>
	          <td><a href="cateDeleteAction?goodsCate2_idx=${dto.goodsCate2_idx}">삭제</a></td>
      	  </tr>
        </c:forEach>
	  </table>
      
      <!-- 하단버튼/페이지네이션 -->
      <div class="bottom">
        <!-- 버튼 -->
        <div>
          <input type="button" value="선택삭제">
        </div>
        <div class="pagination">
          <a href="#"><<</a>
          <a href="#"><</a>
          <a href="#">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">6</a>
          <a href="#">></a>
          <a href="#">>></a>
        </div>
      </div>

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->