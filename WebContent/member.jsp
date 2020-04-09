<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function chk(){
	var pwd=document.getElementById("pwd").value
	var chkPwd=document.getElementById("chkpwd").value	
	var id=document.getElementById("id").value
	if(id==""){
		alert("아이디를 입력해주세요")
	}else if(chkPwd==""){
		alert("비밀번호 확인을 입력해주세요")
	}
	else if(id!=""&&pwd==chkPwd){
		fo.submit();
	}
	
}
function add(){
	var pwd=document.getElementById("pwd").value
	var chkPwd=document.getElementById("chkpwd").value	
	if(pwd==chkPwd){
		document.getElementById("addco").innerHTML="";	
		document.getElementById("addco").innerHTML="일치!!"

	}else{
		document.getElementById("addco").innerHTML="";
		document.getElementById("addco").innerHTML="불일치!!"
	}
	
}



</script>
</head>
<body>
<jsp:include page="default/header.jsp"/>
<div align="center">
<h1 style="color: skyblue;">회 원 가 입</h1>
<form action="memberChk.jsp" id="fo" method="get">
<table>
<tr>
<td>아이디</td><td><input type="text" name="id" id="id"></td><td><span>*필수 항목</span></td>
</tr>
<tr>
<td>비밀번호</td><td><input type="text" name="pwd" id="pwd"></td>
</tr>
<tr>
<td>비밀번호 확인</td><td><input type="text" name="pwdChk" id="chkpwd" onchange="add()"><td><span id=addco>*필수 항목</span></td>
</tr>

<tr>
<td>이름</td><td><input type="text" name="name"></td>
</tr>
<tr>
<td>부서</td><td>
<select size="1" name="division" style="width: 173px;">
<option value="경영지원본부" selected>경영지원본부
<option value="시스템사업본부" selected>시스템사업본부
<option value="개발사업부" selected>개발사업부
<option value="사업본부" selected>SM사업본부
<option value="서비스인프라" selected>서비스인프라
<option value="없음" selected>
</select></td>
</tr>
<tr>
<td>직급</td>
<td>
<select size="1" name="position" style="width: 173px;">
<option value="사원" selected>사원
<option value="주임" selected>주임
<option value="대리" selected>대리
<option value="과장" selected>과장
<option value="팀장" selected>팀장
<option value="부장" selected>부장
<option value="없음" selected>
</select>
</td>
</tr>
<tr align="center">
<td colspan="3"><input type="button" value="회원가입" onclick="chk()"> 
<input type="button" value="취소" onclick="javascript:history.back()" style="width: 70px"></td>
</tr>

</table>
</form>
</div>



<jsp:include page="default/footer.jsp"/>
</body>
</html>