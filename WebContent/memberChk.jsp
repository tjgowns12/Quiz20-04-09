<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="utf-8" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberChk</title>
</head>
<body>
   <jsp:useBean id="dto" class="board.MemberDTO"/>
   <jsp:useBean id="dao" class="board.MemberDAO"/>
   <jsp:setProperty property="*" name="dto"/>
   <c:choose>
      <c:when test="${dao.memberUser(dto) }">
         <script>alert('회원가입을 축하합니다.');location.href='login.jsp';</script>
      </c:when>
      <c:otherwise>
         <script>alert('이미 가입되어있는 아이디입니다.');location.href='member.jsp';</script>
      </c:otherwise>
   </c:choose>
</body>
</html>