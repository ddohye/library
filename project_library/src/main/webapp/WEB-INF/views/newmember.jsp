<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style>
h1 {
	color: #d0858a;
	font-family: times; /* 여러개 중에 앞에서부터 있는 거 사용 */
	font-size: 40px;
	font-weight: bold;
	text-align: center;
}

body {
	text-align: center;
}
</style>
</head>




<body>

	<h1>회원가입</h1>

	<hr width=100% color=#d0858a size=5>

	</table>
	<form action="/library/librarylist" method=post>
		<table style="text-align: center; margin: auto;">
			<tr>
				<th>도서관</th>
				<td><%=session.getAttribute("l_name")%></td>
			<tr>
				<th>아이디</th>
				<td><input type=text name=id required="required"></td>
				<td><input type=button name=idcheck id=idcheck value="중복확인"></td>
				<td><div></div></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type=text name=name required="required"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type=password name=pw required="required"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type=text name=phone required="required"></td>
			</tr>

			</form>
		</table>
		
		<br>
		
		<input type=submit value='가입하기' style="width:70px; height:35px; onclick="alert('가입성공')">
</body>
<script src="/library/resources/jquery-3.2.1.min.js"></script>

<script>

$('#idcheck').on('click', function(){
//	$('div').html("");
	var id = $('input[name=id]').val();
	$.ajax({
		type: 'post',
		data: {"id": id},
		url: '/library/checkname',
		success : function(server_out){
			$('div').html("");	
			if(server_out == ""){
				$('div').html("사용가능한 아이디입니다");	
				$("div").css('color','green');
			}else{
				$('div').html("이미 존재하는 아이디입니다.");	
				$("div").css('color','red');
			}
		},
		
	})// ajax-end
})
</script>
</html>