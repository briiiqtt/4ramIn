<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원목록</title>
</head>
<body>
	<div align="center">
		<div>
			<form id="frm" action="" method="post">
				<div>
					<table>
						<tr align="center">
							<th width="200">아이디</th>
							<th width="200">비밀벙호</th>
							<th width="200">이름</th>
							<th width="200">연락처</th>
							<th width="200">이메일</th>
							<th width="200">권한</th>
						</tr>
						<c:forEach items="${users }" var="users">
							<tr onmouseover='this.style.background="#fcecae";'
								onmouseleave='this.style.background="#FFFFFF";'>
								<td align="center">${users.user_id }</td>
								<td align="center">${users.user_password }</td>
								<td align="center">${users.user_name }</td>
								<td align="center">${users.user_phone }</td>
								<td align="center">${users.user_email }</td>
								<td align="center">${users.user_auth }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
	</div>

</body>
</html>