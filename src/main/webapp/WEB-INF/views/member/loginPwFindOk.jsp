<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>비밀번호찾기</title>

  <!-- CSS -->
  <link href="/css/common_popup.css" rel="stylesheet" type="text/css" />
  <link href="/css/member/idFind.css" rel="stylesheet" type="text/css" />
</head>

<body>

  <div class="wrap">
    <div class="popupTitle">비밀번호찾기</div>
    <div class="comment">
      <p><span class="schEmail">easy@naver.com</span>으로<br>
      비밀번호 제설정 메일이 발송되었습니다.</p>
    </div>
    <div>
      <p>
        <img src="/img/member/sch_icon.png" alt="">
        <span class="info">5분 후에도 메일이 오지 않는다면 <br>
          스팸메일함을 확인하여 주세요.</span>
      </p>
    </div>
    
    <div>
      <table>
          <tr>
            <td colspan="2">
              <input type="image" src="/img/member/b_ok.png" alt="" value="submit" onclick="self.close();">
            </td>
          </tr>
      </table>
    </div>
  </div>
  
</body>
</html>