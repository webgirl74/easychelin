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
        <table class="viewTable">
          <col>
          <col width="10%">
          <tr>
            <td>ì ëª©ì´ íìë©ëë¤.</td>
            <td>
              2022-01-05  <!--ìì±ì¼-->
            </td>
          </tr>
          <tr>
            <td colspan="2">
              {ë´ì©íê¸°} <br>

              (ì) <br>
              ê³ ê°ë ìëíì¸ì! ì´ì§ìë­ ê´ë¦¬ììëë¤. <br>
              ì¶ì ëªì ë¡ ì¸í´ ë°°ì¡ì´ ì§ì°ëê³  ììµëë¤. <br>
              ì´ ì  ìí´ë¥¼ êµ¬í©ëë¤. ìë ìë´ ì¬í­ì ì°¸ê³ í´ ì£¼ì¸ì. <br> <br>

              [ë°°ì¡ ìë´] <br>
              2017-01-27 ì´í ì£¼ë¬¸: 2ì 15ì¼ì ì¼ê´ ë°ì¡ <br>
              2017-01-27 ì´ì  ì£¼ë¬¸: ì ì ë°ì¡ <br> <br>

              íë³µí ëªì  ë³´ë´ìê¸¸ ë°ëëë¤. <br>
              ê°ì¬í©ëë¤. <br>
            </td>
          </tr>
        </table>
      <!-- ê²ìíì´ë¸ end -->
      <div class="bottom">
        <div>
          <button type="button" class="btnBoard2" onclick="window.location.href = '/admin/board/admin_noticeView.html?2?0';">â ì´ì ê¸</button>
          <button type="button" class="btnBoard2" onclick="window.location.href = '/admin/board/admin_noticeView.html?2?0';">ë¤ìê¸ â¶</button>
        </div>
        <div>
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeList.html?2?0';">ëª©ë¡</button>
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeModify.html?2?0';">ìì </button>
          <button type="button" class="btnBoard1" onclick="window.location.href = '';">ì­ì </button>
          <button type="button" class="btnBoard1" onclick="window.location.href = '/admin/board/admin_noticeWrite.html?2?0';">ê¸ì°ê¸°</button>
        </div>
      </div>


    </div> <!--bbs_wrap-->
    <!-- right end-->
  </div> <!--adminBox-->