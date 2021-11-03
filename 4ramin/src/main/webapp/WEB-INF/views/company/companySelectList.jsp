<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>기업명</th>
			<th>기업소개</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>위치</th>
			<th>사업자번호</th>
			<th>직원수</th>
			<th>담당자</th>
			<th>신입초봉</th>
		</tr>
		<c:forEach items="${companies }" var="company">
			<tr>
				<td>${company.com_id }</td>
				<td>${company.com_pw }</td>
				<td>${company.com_name }</td>
				<td>${company.com_intro }</td>
				<td>${company.com_phone }</td>
				<td>${company.com_email }</td>
				<td>${company.com_loc }</td>
				<td>${company.com_reg }</td>
				<td>${company.com_imp }</td>
				<td>${company.com_man }</td>
				<td>${company.com_sal }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>