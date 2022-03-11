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
      <table class="schTable">
        <tr>
          <td class="btnTd">
            <select name="schName">
              <option value="1">ì ëª©</option>
              <option value="2">ë´ì©</option>
              <option value="3" selected>ì ëª© + ë´ì©</option>
            </select>
            <input type="text" name="" placeholer="ê²ìì´ë¥¼ ìë ¥í´ ì£¼ì¸ì." size="100">
            <input type="submit" value="ê²ì" class="btnSch">
          </td>
        </tr>
      </table>
      <!-- ê²ìíì´ë¸ end -->

      <!-- ê²ìê²°ê³¼ íì´ë¸ -->
      <table class="listTable">
        <col width="5%">
        <col width="5%">
        <col>
        <col width="10%">
        <col width="10%">
        <col width="10%">
        <tr>
          <th><!-- í´ë¦­ ì ì ì²´ ìíê¸°ë¥ ë£ì´ì£¼ì¸ì. -->
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label></th>
          </th>
          <th>ë²í¸</th>
          <th>ì ëª©</th>
          <th>ìì±ì</th>
          <th>ìì±ì¼</th>
          <th>ì¡°íì</th>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td><button class="sBtn">ì¤ì</button></td>
          <td class="subject"><a href="/admin/board/admin_noticeView.html?2?0">ê¸ ì ëª©ì´ íê¸° ë©ëë¤.</a></td>          
          <td>ê´ë¦¬ì</td>
          <td>2021-08-23</td>
          <td>12</td>
        </tr>
        <tr>
          <td>
            <input type="checkbox" name="check" id="check" value="no"><label for="check">&nbsp;</label>
          </td>
          <td>1</td>
          <td class="subject"><a href="/admin/board/admin_noticeView.html?2?0">ê¸ ì ëª©ì´ íê¸° ë©ëë¤.</a></td>          
          <td>ê´ë¦¬ì</td>
          <td>2021-08-23</td>
          <td>12</td>
        </tr>
      </table>
      <!-- íë¨ë²í¼/íì´ì§ë¤ì´ì -->
      <div class="bottom">
        <!-- ë²í¼ -->
        <div>
          <input type="button" value="ì íê¸ ì­ì "> 
          <input type="button" value="ì íê¸ ì¤ì ì§ì "> 
          <input type="button" value="ì íê¸ ì¤ì í´ì "> 
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