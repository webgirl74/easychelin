<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ì´ì§ìë­ :: ë´ì¼ì ë§ë³´ê¸°, ì´ì§ìë­[ê´ë¦¬ì]</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <!-- ì¤ë§í¸ìëí° -->
    <script type="text/javascript" src="/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>

    <script>
        $(document).ready(function(){
            $('#gnb').load("/admin/admin_gnb.html");
            $('#left').load("/admin/admin_left_board.html");
        });
    </script>

    <link href="/css/admin/admin_common.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_gnb.css" rel="stylesheet" type="text/css" />
    <link href="/css/admin/admin_board.css" rel="stylesheet" type="text/css" />


</head>
<body>
  <!-- í¤ë -->
  <div id="gnb"></div>  
  
  
  <div class="adminBox">
    <!-- left Menu -->
    <div id="left" class="aside"></div>
    <!-- // left Menu -->
    
    <!-- right -->
    <div class="bbs_wrap">
      <!-- íì¬ìì¹ -->
      <location>í > ê²ìíê´ë¦¬ > ê³µì§ì¬í­</location>
      <!-- íì´í -->
      <div class="pageTitle">::: ê³µì§ì¬í­ </div>

      <!-- ê²ìíì´ë¸ -->
      <form action="" method="post" name="frm" id="frm">
        <table class="writeTable">
          <col width="10%">
          <col>
          <tr>
            <td>ì í</td>
            <td>
              <input class="check" type="radio" id="notice_opt1" name="notice_opt" checked><label for="notice_opt1">ì¼ë°ê³µì§&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
              <input class="check" type="radio" id="notice_opt2" name="notice_opt"><label for="notice_opt2">ì¤ìê³µì§</label>            
            </td>
          </tr>
          <tr>
            <td>ì ëª©</td>
            <td>
              <input type="text" name="notice_title" placeholer="ì ëª©ì ìë ¥í´ ì£¼ì¸ì." size="100">
            </td>
          </tr>
          <tr>
            <td>ë´ì©</td>
            <td>
              <textarea name="ir1" id="ir1" rows="10" cols="150"></textarea>
            </td>
          </tr>
          <tr>
            <td colspan="2" class="btnTd">
              <input type="submit" value="ì ì¥" class="btnSch">
            <input type="button" value="ì·¨ì" class="btnSch2" onclick="javascript:history.back(-1);">
            </td>
          </tr>
        </table>
      </form>
      <!-- ê²ìíì´ë¸ end -->

      <!-- textarea ìë ì²¨ë¶ -->
      <script type="text/javascript">
        var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
         oAppRef: oEditors,
         elPlaceHolder: "ir1",  //textarea IDìë ¥
         sSkinURI: "/smarteditor/SmartEditor2Skin.html",  //smartEditor2Skin.htmlê²½ë¡ìë ¥
         fCreator: "createSEditor2",
         htParams : {
           bUseToolbar : true,  //í´ë° ì¬ì© ì¬ë¶(true:ì¬ì© / false:ì¬ì©íì§ ìì)
           bUseVerticalResizer : false, //ìë ¥ì°½ í¬ê¸° ì¡°ì ë° ì¬ì© ì¬ë¶ (true:ì¬ì©/ false:ì¬ì©íì§ ìì)
           bUseModeChanger : false  //ëª¨ëí­(Editor | HTML | TEXT) ì¬ì©ì¬ë¶(true:ì¬ì©/ false:ì¬ì©íì§ ìì)
         }
        });
      </script>
      <script>
        var frm=document.getElementById("frm"); //ìì±í¼ë¤ì
        function save(){
          oEditors.getById["testContent"].exec("UPDATE_CONTENTS_FIELD", []);  //ì¤ë§í¸ìëí° ê°ì íì¤í¸ì»¨íì¸ ë¡ ì ë¬
          frm.submit(); //submit
          return;
        }
      </script>



    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->