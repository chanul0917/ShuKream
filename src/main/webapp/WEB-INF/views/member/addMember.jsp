<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
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
.addMem{
	position: relative;
	top: 120px;
}
#checkBtn{
	color: white;
    background: black;
}
#addBtn{
	color: white;
    background: black;
    position: relative;
    top: 110px;
    left: 100px;
}
#resetBtn{
	color: white;
    background: black;
    position: relative;
    top: 110px;
    left: 130px;
}
</style>
	<script>
		function fn_overlapped() {
			
			var email = $("#user_email").val();
			
			if(email == ''){
				alert("�̸����� �Է����ּ���");
			return;
			}
			$.ajax({
				type:get,
				async:false,
				url:"${contextPath}/member/overlapped.do",
				dataType:"text",
				data:{email:email},
				success:function (data,textStatus){
					if(data=='false'){
						alert("����� �� �ִ� �̸����Դϴ�.");
						$('#checkBtn').prop("disabled", true);
						$('#user_email').prop("disabled", true);
					}else{
						alert("����� �� ���� �̸����Դϴ�.");
					}
				},
				error:function(data,textStatus){
					alert("������ �߻��߽��ϴ�.");
				},
				complete:function(data,textStatus){
				}
			});
		}
	</script>
</head>
<body>

<div class="addMem" style="text-align: center">
	<form action="${contextPath}/member/addMemberForm.do" method= "get" style="display: inline-block;">
		<table>
			<tr class="add" style="position: relative; top: 40px;">	
				<td class="join">�̸���</td>
				<td>
					<input type="text" name="user_email" id="user_email" size="20" placeholder="�̸����� �Է����ּ���">
					<input type="hidden" name="email" id="email" value="">
					
					<input type="button" id="checkBtn" value="�ߺ�Ȯ��" onClick="fn_overlapped()"/>
				</td>
			</tr>
			<tr class="add" style="position: relative; top: 60px;">
				<td class="join">��й�ȣ</td>
				<td><input type="password" name="user_pw" size="20" placeholder="��й�ȣ�� �Է����ּ���"></td>
			</tr>
			<tr class="add" style="position: relative; top: 80px;">
				<td class="join">�̸�</td>
				<td><input type="text" name="user_name" size="20" placeholder="�̸��� �Է����ּ���"></td>
			</tr>
			<tr class="add">
				
					<td><input type="submit" id="addBtn" value="ȸ������"></td>
					<td><input type="reset" id="resetBtn" value="�ٽ��Է�"></td>
				</td>
			</tr>
		</table>
	</form>
</div>
	
</body>
</html>