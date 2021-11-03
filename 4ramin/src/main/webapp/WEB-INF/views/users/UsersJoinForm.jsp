<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function Join() {
	var pw = userjoin.user_password.value;
	var pwr = userjoin.user_passwordRE.value;
	if(userjoin.user_id.value ==""){
		alert("아이디 를 입력해주세요")
		userjoin.user_id.focus();
		return false;
	}
	if(userjoin.user_password.value ==""){
		alert("비밀번호 를 입력해주세요")
		userjoin.user_password.focus();
		return false;
	}
	if(userjoin.user_name.value ==""){
		alert("이름을 입력해주세요")
		userjoin.user_name.focus();
		return false;
	}
	if(userjoin.user_phone.value ==""){
		alert("연락처 를 입력해주세요")
		userjoin.user_phone.focus();
		return false;
	}
	if(userjoin.user_email.value ==""){
		alert("이메일 을 입력해주세요")
		userjoin.user_email.focus();
		return false;
	}
	
	if(pw == pwr){
		userjoin.submit();
	}else{
		alert("비밀번호가 다릅니다.");
		userjoin.user_password.value="";
		userjoin.user_passwordRE.value="";
		userjoin.user_password.focus();
		return false;
	}
	
}

</script>
</head>
<body>
	<div align="center">
		<div>
			<h1>회원가입</h1>
		</div>
		<div>
			<form id="userjoin" action="UsersJoin.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">아이디</th>
							<td width="200">
								<!-- readonly="required" : 필수입력 --> <input type="text" id="user_id"
								name="user_id" required="required" placeholder="아이디">
							</td>
						</tr>
						<tr>
							<th width="150">비밀번호</th>
							<td width="200"><input type="password" id="user_password"
								name="user_password" required="required" placeholder="비밀번호"></td>
						</tr>
						<tr>
							<th width="150">비밀번호 재입력</th>
							<td width="200"><input type="password" id="user_passwordRE"
								name="user_passwordRE" required="required" placeholder="비밀번호 재입력"></td>
						</tr>
						<tr>
							<th width="150">이 름</th>
							<td width="200"><input type="text" id="user_name" name="user_name">
							</td>
						</tr>
						<tr>
							<th width="150">연락처</th>
							<td width="200"><input type="text" id="user_phone" name="user_phone">
							</td>
						</tr>
						<tr>
							<th width="150">Email</th>
							<td width="200"><input type="text" id="user_email" name="user_email">
							</td>
						</tr>
					</table>
				</div><br>
				<input type="hidden" id="user_auth" name="user_auth" value="USER">
				<input type="button" value="회원가입" onclick="Join()">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="다시쓰기">
			</form>
		</div>
	</div>
</body>
</html>