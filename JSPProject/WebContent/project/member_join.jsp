<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width ,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>member_join</title>
</head>
<script type="text/javascript">
	function checkMember() {
		var regExpId = /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPasswd = /^[0-9a-zA-Z]*$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var form = document.Member;
		
		var id = form.id.value;
		var name = form.name.value;
		var passwd = form.passwd.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		var email = form.email.value;
		
		if (!regExpId.test(id)){
			alert("아이디 입력을 확인해주세요!");
			form.id.select();
			return;
		}
		if (!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요!");
			return;
		}
		if (!regExpPasswd.test(passwd)){
			alert("비밀번호는 영어와 숫자만 입력해주세요!");
			return;
		}
		if (!regExpPhone.test(phone)){
			alert("연락처 입력을 확인해주세요!");
			return;
		}
		if (!regExpEmail.test(email)){
			alert("이메일 입력을 확인해주세요!");
			return;
		}
		
		form.submit();
	}
	
</script>
<body>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
      <h3>Main</h3>
  </div>
 </nav>
 <div class="container">
  <div class="col-lg-4">
   <div class="jumbotron" style="padding-top: 20px;">
 

	<form name="Member" action="join_process.jsp" method="post">
    <h3 style="text-align: center;"> 회원 가입 </h3>
    <div class="form-group">
     <label for="input_id">ID 입력</label>
     <input type="text" class="form-control" id="input_id" placeholder="아이디" name="id" maxlength="20">
    </div>

    <div class="form-group">
     <label for="input_pw">비밀번호 입력</label>
     <input type="password" class="form-control" id="input_pw" placeholder="비밀번호" name="passwd" maxlength="20">
    </div>
    
    <div class="form-group">
     <label for="input_name">이름 입력</label>
     <input type="text" class="form-control" id="input_name" placeholder="이름" name="name" maxlength="20">
    </div>
    
    <label for="input_phone">전화번호 입력</label>
    <div class="form-inline form-group">
     <select class="form-control" id="input_phone" name="phone1">
      <option value="010">010</option>
      <option value="011">011</option>
      <option value="016">016</option>
      <option value="017">017</option>
      <option value="019">019</option>
	 </select> - <input type="text" class="form-control" maxlength="4" size="4" name="phone2"> -
	 <input type="text" class="form-control" maxlength="4" size="4" name="phone3">
    </div>
    
    <div class="form-group">
     <label for="input_email">Email주소 입력</label>
     <input type="text" class="form-control" id="input_email" placeholder="example@naver.com" name="email" maxlength="20">
    </div>

    <input type="button" class="btn btn-primary form-control" value="가입하기" onclick="checkMember()">
   </form>
  </div>
 </div>
</div>
</body>
</html>