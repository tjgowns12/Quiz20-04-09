<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="id" value="${param.id }"/>
<c:set var="pwd" value="${param.pwd }"/>
<jsp:useBean id="dao" class="board.MemberDAO"/>
${dao.memLogin(id,pwd) }
<c:choose>
<c:when test="${dao.memLogin(id,pwd) }">
<script type="text/javascript">
alert("환영합니다")
location.href="index.jsp";
</script>
</c:when>
<c:otherwise>
<script type="text/javascript">

</script>



</c:otherwise>

</c:choose>

</body>
</html>