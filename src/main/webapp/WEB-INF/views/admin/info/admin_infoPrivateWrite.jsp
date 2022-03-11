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

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />

</head>
<body>
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"><c:import url="./admin_left_info.jsp" /></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- 현재위치 -->
      <location>홈 > 정책관리 > 정책등록</location>
      <!-- 타이틀 -->
      <div class="pageTitle">::: 정책등록 </div>

      <!-- 배너등록테이블 -->
      <br>
      <form action="" method="post" name="frm" id="frm">
      <table class="schTable">
        <col width="10%" class="labelTxt">
        <col width="85%">
        <tr>
          <td>제목</td>
          <td>
            <input type="text" name="easyPolicy_title" style="width:60%;">
          </td>
        </tr>
        <tr>
          <td>내용</td>
          <td>
            <textarea name="ir1" id="ir1" rows="10" cols="150"></textarea>            
          </td>
        </tr>
        <tr>
          <td colspan="2" class="btnTd">
            <input type="submit" value="수정" class="btnSch">
            <input type="button" value="취소" class="btnSch2" onclick="javascript:history.back(-1);">
          </td>
        </tr>
      </table>
      </form>
      <!-- 배너등록테이블 end -->
      

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