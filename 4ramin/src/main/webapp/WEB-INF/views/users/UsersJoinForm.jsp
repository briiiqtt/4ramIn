<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style>
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
	background-color: #3e8e41;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	background-color: #f1f1f1
}

.show {
	display: block;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function Join() {
		var pw = userjoin.user_password.value;
		var pwr = userjoin.user_passwordRE.value;
		if (userjoin.user_id.value == "") {
			alert("아이디 를 입력해주세요")
			userjoin.user_id.focus();
			return false;
		}
		if (userjoin.user_password.value == "") {
			alert("비밀번호 를 입력해주세요")
			userjoin.user_password.focus();
			return false;
		}
		if (userjoin.user_name.value == "") {
			alert("이름을 입력해주세요")
			userjoin.user_name.focus();
			return false;
		}
		if (userjoin.user_phone.value == "") {
			alert("연락처 를 입력해주세요")
			userjoin.user_phone.focus();
			return false;
		}
		if (userjoin.user_email.value == "") {
			alert("이메일 을 입력해주세요")
			userjoin.user_email.focus();
			return false;
		}

		if (pw == pwr) {
			userjoin.submit();
		} else {
			alert("비밀번호가 다릅니다.");
			userjoin.user_password.value = "";
			userjoin.user_passwordRE.value = "";
			userjoin.user_password.focus();
			return false;
		}

	}

	/*사용자가 버튼을 클릭하면,드롭다운 콘텐츠 숨기기 및 표시 간 전환 */
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("show");
		
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
					<table>
						<tr>
							<th width="150">아이디</th>
							<td width="200">
								<!-- readonly="required" : 필수입력 --> <input type="text"
								id="user_id" name="user_id" required="required"
								placeholder="아이디">
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
								name="user_passwordRE" required="required"
								placeholder="비밀번호 재입력"></td>
						</tr>
						<tr>
							<th width="150">이 름</th>
							<td width="200"><input type="text" id="user_name"
								name="user_name"></td>
						</tr>
						<tr>
							<th width="150">연락처</th>
							<td width="200"><input type="text" id="user_phone"
								name="user_phone"></td>
						</tr>
						<tr>
							<th width="150">Email</th>
							<td width="200"><input type="text" id="user_email"
								name="user_email"></td>
						</tr>
					</table>
				</div>
				<br> <input type="hidden" id="user_auth" name="user_auth"
					value="USER"> <input type="button" value="회원가입"
					onclick="Join()">&nbsp;&nbsp;&nbsp; <input type="reset"
					value="다시쓰기">
			</form>
		</div>
	</div>

	<br>
	<!-- 회원리스트 드롭다운 출력 -->
	<div class="dropdown">
	<input type="button" onclick="myFunction()" class="dropbtn" value="회원리스트" >
		<<!-- button onclick="myFunction()" class="dropbtn">
			<a href="UserList.do">회원리스트</a>
		</button> -->
		<div id="myDropdown" class="dropdown-content">
			<div>
				<form id="frm" action="" method="post">
					<div>
						<table>
							<tr>
								<th width="100">ID</th>
								<th width="200">Name</th>
								<th width="150">Auth</th>
							</tr>
							<!-- userList변수로 값을 받아와서 users 변수라는 이름으로 뿌려준다-->
							<c:forEach items="${userList }" varStatus="users">
								<tr>
									<td>${users.user_id }</td>
									<td>${users.user_name }</td>
									<td>${users.user_autg }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

</body>
</html>