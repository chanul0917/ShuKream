<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

.footer{
    top: 380px;
    position: relative;
}

</style>
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}

function result(){
	alert("���̵�  ��й�ȣ�� Ʋ���ϴ�. �ٽ� �α������ּ���");
}
</script>
</c:if>
</head>
<body>
<div id="mFrm" style="text-align: center">
<form action="${contextPath}/member/loginPro.do" method="GET">
<input type="text" name="user_email" placeholder="�̸���" style="position: relative; top: 110px; left: 120px;">
<button type="submit" id="loginBtn" style="position: relative; top: 160px; left: -10px; background: black; color: white;">
	�α���
</button>
<button id="addBtn" style="position: relative; top: 200px; left: -85px; background: black; color: white;">
	ȸ������
</button>
</form>
</div>
</body>
</html>