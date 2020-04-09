<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: none;}
</style>

<body>
<header>
<h1 style="font-family: Gabriola; font-size: 70px; color: skyblue;" align="center" >CARE&nbsp;&nbsp;LAB</h1>
<hr>
<div align="right">
<a href="index.jsp">HOME</a>&nbsp;&nbsp;&nbsp;
<c:choose>
<c:when test="${sessionScope.id ne'' }">
<a href="memberInfo.jsp">회원 정보</a>&nbsp;&nbsp;
<a href="login.jsp">로그인</a>&nbsp;&nbsp;
</c:when>
<c:otherwise>
<a href="memberInfo.jsp">회원 정보</a>&nbsp;&nbsp;
<a href="logout.jsp">로그아웃</a>&nbsp;&nbsp;
</c:otherwise>
</c:choose>
<hr>






</div>

</header>

</body>
</html>