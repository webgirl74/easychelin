<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page trimDirectiveWhitespaces="true" %>  

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

    <!-- 스마트에디터 -->
    <script type="text/javascript" src="/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>

    <script>

        //글자수 제한(배송요청사항)
        $(document).ready(function() {
            $('#buy_message').on('keyup', function() {
                $('#buy_message_cnt').html("("+$(this).val().length+" / 100)");
        
                if($(this).val().length > 100) {
                    $(this).val($(this).val().substring(0, 100));
                    $('#buy_message_cnt').html("(100 / 100)");
                }
            });
        });

    </script>

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_goods.css" rel="stylesheet" type="text/css" />

    

</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_goods.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 상품관리 > 상품등록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 상품등록 </div>

    <form action="" method="post" name="frm" id="frm">
      <!-- 상품정보입력 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col width="25%">
        <col width="10%" class="labelTxt">
        <col width="20%"> 
        <col width="10%" class="labelTxt">
        <col width="25%"> 
        <tr>
          <th colspan="6">
            | 상품 정보 입력
          </th>
        </tr>
        <tr>
          <td>1차 카테고리</td>
          <td>
            <select name="goodsCate1">              
              <option value="">1차 카테고리 선택</option>
              <option value="1">밀키트</option>
              <option value="2">신선식품</option> 
              <option value="3">냉동식품</option> 
              <option value="4">건강식품</option>   
            </select>            
          </td>
          <td>2차 카테고리</td>
          <td colspan="3">
            <select name="goodsCate2_idx">
              <option value="">2차 카테고리 선택</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>브랜드명</td>
          <td colspan="5">
            <input type="text" name="goods_brand" style="width:70%;">
          </td>
        </tr>
        <tr>
          <td>상품명</td>
          <td colspan="5">
            <input type="text" name="goods_name" style="width:70%;">
          </td>
        </tr>
        <tr>
          <td>판매가격</td>
          <td><input type="text" name="goods_salePrice" class="orderViewPrice1">원</td>
          <td>정상가격</td>
          <td><input type="text" name="goods_price" class="orderViewPrice1">원</td>
          <td>최대 구매 수량</td>
          <td><input type="text" name="goods_maxbuy" class="orderViewPrice2">개</td>
        </tr>
        <tr>
          <td>재고수량</td>
          <td colspan="5"><input type="text" name="goods_maxbuy" class="orderViewPrice1">개</td>
        </tr>
        <tr>
          <td>적립금</td>
          <td colspan="5">
            <input class="check" type="radio" id="point1" name="goods_point"><label for="point1">기본 적립금 적용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="point2" name="goods_point"><label for="point2">
              별도의 적립금 적용 :  <input type="text" name="goods_pointEtc" class="orderViewPrice2"> %&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="point3" name="goods_point"><label for="point3">적립금 없음</label>                  
          </td>
        </tr>
        <tr>
          <td>배송비</td>
          <td colspan="5">
            <input class="check" type="radio" id="delivery1" name="goods_delivery"><label for="delivery1">기본 배송비 적용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="delivery2" name="goods_delivery"><label for="delivery2">
              별도의 배송비 적용 :  <input type="text" name="goods_deliveryEtc" class="orderViewPrice2"> 원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="delivery3" name="goods_delivery"><label for="delivery3">무료 배송</label>                  
          </td>
        </tr>
        <tr>
          <td>상품 특성</td>
          <td colspan="5">
            <input type="checkbox" name="goods_inew" id="goods_inew">
            <label for="goods_inew">&nbsp;신상품</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_ibest" id="goods_ibest">
            <label for="goods_ibest">&nbsp;BEST</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_isale" id="goods_isale">
            <label for="goods_isale">&nbsp;할인</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="goods_isoldout" id="goods_isoldout">
            <label for="goods_isoldout">&nbsp;품절</label>
          </td>
        </tr>
        <tr>
          <td>중량/용량</td>
          <td colspan="5">
            <input type="text" name="goods_name" style="width:30%;">
          </td>
        </tr>
        <tr>
          <td>상품정보</td>
          <td colspan="5">
            <input class="check" type="radio" id="use1" name="goods_item_use"><label for="use1">사용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="use2" name="goods_item_use"><label for="use2">사용안함</label><br>            
            <input type="text" name="goods_item1_title" style="width:10%;" placeholder="항목명1"> 
            <input type="text" name="goods_item1_content" style="width:30%;" placeholder="항목내용1"><br>
            <input type="text" name="goods_item2_title" style="width:10%;" placeholder="항목명2"> 
            <input type="text" name="goods_item2_content" style="width:30%;" placeholder="항목내용2">
          </td>
        </tr>
      </table>
      <!-- 상품정보입력 테이블 end -->


      <!-- 상품 소개 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col>
        <tr>
          <th colspan="2">
            | 상품 소개
          </th>
        </tr>
        <tr>
          <td>상품특징</td>
          <td>
            <input type="text" name="goods_brand" style="width:50%;">
            25자 제한 (상품리스트에 표기,제품상세보기 제품명하단에 표기)
          </td>
        </tr>
        <tr>
          <td>상품이미지</td>
          <td>
            리스트 이미지(250pixel X 320pixel)<br>
            <input type="text" name="goods_img_main" style="width:30%;">
            <input type="button" value="찾아보기"><br>
            상품대표 이미지(000pixel X 000pixel)<br>
            <input type="text" name="goods_img_detail1" style="width:30%;">
            <input type="button" value="찾아보기"><br>
            <input type="text" name="goods_img_detail2" style="width:30%;">
            <input type="button" value="찾아보기"><br>
            <input type="text" name="goods_img_detail3" style="width:30%;">
            <input type="button" value="찾아보기"><br>
            <input type="text" name="goods_img_detail4" style="width:30%;">
            <input type="button" value="찾아보기">
          </td>
        </tr>
        <tr>
          <td>알레르기정보</td>
          <td>
            <textarea id="goods_allergy" name="goods_allergy" rows="2" cols="150"></textarea>
          </td>
        </tr>
        <tr>
          <td>상품상세정보</td>
          <td>
            <textarea name="ir1" id="ir1" rows="10" cols="150"></textarea>
          </td>
        </tr>
      </table>
      <!-- 상품 소개 테이블 end -->

      <!-- | 배송안내 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col>
        <tr>
          <th colspan="2">
            | 배송안내
          </th>
        </tr>
        <tr>
          <td>안내선택</td>
          <td>
            <input class="check" type="radio" id="opt1" name="goods_delinfo_opt"><label for="opt1">공통 배송 안내 노출&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="opt2" name="goods_delinfo_opt"><label for="opt2">개별 배송 안내 작성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
          </td>
        </tr>
        <tr>
          <td>안내문구</td>
          <td>
            <textarea name="ir1" id="ir1" rows="10" cols="150"></textarea>
          </td>
        </tr>
      </table>
      <!-- | 배송안내 테이블 end -->

      <!-- | 교환 및 반품 안내 테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col>
        <tr>
          <th colspan="2">
            | 교환 및 반품 안내
          </th>
        </tr>
        <tr>
          <td>안내선택</td>
          <td>
            <input class="check" type="radio" id="return1" name="goods_return_opt"><label for="return1">공통 교환 및 반품 안내 노출&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="return2" name="goods_return_opt"><label for="return2">개별 교환 및 반품 안내 작성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
          </td>
        </tr>
        <tr>
          <td>안내문구</td>
          <td>
            <textarea name="ir1" id="ir1" rows="10" cols="150"></textarea>
          </td>
        </tr>
      </table>
      <!-- | 교환 및 반품 안내 테이블 end -->

      <!-- | 상품 노출 여부  테이블 -->
      <table class="orderView">
        <col width="10%" class="labelTxt">
        <col>
        <tr>
          <td>상품 노출 여부</td>
          <td>
            <input class="check" type="radio" id="view1" name="goods_view"><label for="view1">진열&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input class="check" type="radio" id="view2" name="goods_view"><label for="view2">숨김&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
          </td>
        </tr>
      </table>
      <!-- | 상품 노출 여부  테이블 end -->


      <div style="text-align:center;margin-bottom:100px;">
        <input type="submit" value="등록" class="btnSch">
        <input type="button" value="취소" class="btnSch2">
      </div>
    </form>

      <!-- textarea 아래 첨부 -->
      <script type="text/javascript">
        var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
         oAppRef: oEditors,
         elPlaceHolder: "ir1",  //textarea ID입력
         sSkinURI: "/smarteditor/SmartEditor2Skin.html",  //smartEditor2Skin.html경로입력
         fCreator: "createSEditor2",
         htParams : {
           bUseToolbar : true,  //툴바 사용 여부(true:사용 / false:사용하지 않음)
           bUseVerticalResizer : false, //입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
           bUseModeChanger : false  //모드탭(Editor | HTML | TEXT) 사용여부(true:사용/ false:사용하지 않음)
         }
        });
      </script>
      <script>
        var frm=document.getElementById("frm"); //작성폼네임
        function save(){
          oEditors.getById["testContent"].exec("UPDATE_CONTENTS_FIELD", []);  //스마트에디터 값을 텍스트컨텐츠로 전달
          frm.submit(); //submit
          return;
        }
      </script>

    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->