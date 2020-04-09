<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="default/header.jsp"/>
<div align="center">
<h1 style="color: skyblue;">로그인 화면 입니다~!</h1>
<form action="loginChk.jsp">
<table style="background-color: #79AAFF; ">
<tr>
<td><img src="사람.png"></td><td><input type="text" name="id" placeholder="아이디" style="background-color: skyblue; height: px;"></td>
</tr>
<tr>
<td><img src="비밀번호.png"></td><td><input type="text" name="pwd" placeholder="비밀번호"style="background-color: skyblue"></td>
</tr>
<tr>
<td colspan="3" align="center">
<input type="submit" value="로그인" style="width:100px; background-color: pink;">
<input type="button" value="회원가입" style="width:100px; background-color: pink;" onclick="location.href='member.jsp'"> </td>
</tr>

</table>
</form>


</div>





<jsp:include page="default/footer.jsp"/>
</body>
</html>