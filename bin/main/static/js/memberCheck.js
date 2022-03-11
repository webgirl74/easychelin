function checkValue(){
  var id_RegExp =   /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{6,20}$/;//id 유효성 검사 정규식
  var pw_RegExp = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;//pw 유효성 검사 정규식

  //이메일 유효성검사 정규식
  var e_RegExp =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
  var n_RegExp = /^[가-힣]{2,5}$/; //이름 유효성검사 정규식
  var p_RegExp = /^[0-9]{9,12}$/; // 휴대전화 유효성 검사 정규식
  
  var member_id = document.getElementById("member_id"); //아이디
  var member_pw = document.getElementById("member_pw"); //비밀번호
  var member_pw_check = document.getElementById("member_pw_check"); //비밀번호확인
  var member_name = document.getElementById("member_name"); //이름
  var member_email = document.getElementById("member_email");//메일
  var member_phone = document.getElementById("member_phone");//폰
  var sample6_postcode = document.getElementById("sample6_postcode");//주소
  var sample6_detailAddress = document.getElementById("sample6_detailAddress");//상세주소

  
  // ================ ID 유효성검사 ================ //
  
  if(member_id.value==''){
      alert("아이디를 입력해주세요.");
      return false;
  }
  if(!id_RegExp.test(member_id.value)){ //아이디 유효성검사
      alert("아이디를 생성규칙에 맞게 다시입력해주세요.");        
      return false;
  }
  
  // ================ PASSWORD 유효성검사 ===============//
  if(member_pw.value==''){ // 비밀번호 입력여부 검사
      alert("비밀번호를 입력해주세요.");
      return false;
  }
  if(!pw_RegExp.test(member_pw.value)){ //패스워드 유효성검사
      alert("비밀번호를 생성규칙에 맞게 다시입력해주세요.");
      return false;
  }
  
  if(member_pw_check.value!=member_pw.value){ //비밀번호와 비밀번호확인이 동일한지 검사
      alert("비밀번호가 다릅니다. 비밀번호를 다시 입력해주세요.");
      return false;
  }

   // ================ 이름 유효성검사 ================ //        
   if(member_name.value ==''){
      alert("이름을 입력해주세요.");
      return false;
  }
  if(!n_RegExp.test(member_name.value)){
      alert("이름을 작성정책에 맞게 입력해주세요.");
      return false;
  }
  
  // ================ email 유효성검사 ================ //
  if(member_email.value == ''){ // 이메일 입력여부 검사
      alert("이메일을 입력해주세요.");
      return false;
  }
  
  if(!e_RegExp.test(member_email.value)){ //이메일 유효성 검사
      alert("이메일 주소를 형식에 맞게 입력해주세요.");
      return false;
  }
  
 

  // ================ 휴대폰 유효성검사 ================ //        
  if(member_phone.value ==''){
      alert("휴대폰번호를 입력해주세요.");
      return false;
  }
  if(!p_RegExp.test(member_phone.value)){
      alert("번호만 입력해주세요.");
      return false;
  }

  // ================ 주소 유효성검사 ================ //        
  if(sample6_postcode.value ==''){
      alert("주소를 입력해주세요.");
      return false;
  }
  
  // ================ 상세주소 유효성검사 ================ //        
  if(sample6_detailAddress.value ==''){
      alert("상세주소를 입력해주세요.");
      return false;
  }

  return true; //submit전송됨.
}
 


    //ajax으로 서버와 통신한다.
    // ajax 용도 : 화면 갱신(reload,redirect)가 없이
    //            부분화면 갱신(통신)을 js에서 한다.
    //           예)네이버 - 실시간검색어, 실시간날씨
  function idCheck() {
    var member_id = $('#member_id').val();
    if(!member_id){
    alert("아이디를 입력하세요.");
    return false;
  }
  // 아이디 유효성 검사(1보다 같거나 크면 중복 / 0 이면 중복안됨)
  $.ajax(
    {
      url: 'http://localhost:8090/member/idCheckAjax?member_id='+ member_id,	
        type: 'get',
        success: function(data) {
          console.log('통신 성공, data:' + data);
          
          var data_num = Number( data );
          if( data_num >= 1 ) {
            //아이디가 중복됨.
            alert("아이디가 중복됩니다.");
          $('#member_id_check').val("no");
          }else{
            //아이디가 중복 안됨. 사용 가능.
            alert("아이디가 사용가능합니다.");
          $('#member_id_check').val("yes");
          }
          
        },
        error: function(){
          console.log('통신 실패');
        }	
    }
  
  );}  