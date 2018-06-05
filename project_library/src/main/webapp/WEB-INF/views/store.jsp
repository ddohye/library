<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
table{text-align: center; border: solid 1px;}
td{border: solid 1px;}
#result_content{background-color: pink;}
</style>

<script src="/library/resources/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	var stnum; //글번호
	$('.selectTitle').on('click',function(event){
		event.preventDefault();
		//var stnum = $(this).html(); --> 제목
		stnum = $(this).closest("tr").children().eq(1).text(); //선택행의 stnum
		 $.ajax({
			type: 'POST',
			dataType : 'JSON',
			data: {"stnum" : stnum},
			url: '/library/store.stnum',
			success: function(server_result){
				$("#result").attr('hidden',false);
				$("#result").html(
				"<table id='result_content'>"+
				"<tr>"+"<td>제목</td>"+"<td>작성자</td>"+"<td>작성일</td>"+"</tr>"+
				"<tr>"+
				"<td>"+server_result.st_title+"</td>"+
				"<td>"+server_result.st_m_id+"</td>"+
				"<td>"+server_result.st_date+"</td>"+
				"</tr>"+
				"<tr>"+
				"<td>내용</td>"+
				"<td colspan='2'>"+
				server_result.st_context+"<br><input type=button id='sendMsg' value='쪽지보내기'>"+
				"<input type=button id='change' value='거래상태변경'>"+
				"</td>"+
				"</tr>"+
				"</table>");
			}//success-end
			
			/* complete:function(){
				alert("통신완료");
			} */
			
		});//ajax-end
	})//.selectTitle-on-end
	
	$("#result").on('click',"input[id='change']", function(){
		var inputPw = prompt("작성시 비밀번호를 입력해주세요");
		$.ajax({
			type : 'POST',
			dataType : 'JSON',
			data : {"stnum" : stnum},
			url : '/library/store.stnum',
			success : function(server_result){
				var result = server_result;
				if(inputPw == pw){
					confirm("하이<input type=checkbox>");
				}
				else{
					//비밀번호가 틀림
					alert("비밀번호를 확인해주세요");
				}
			}
		})
	})
	
	$("#result").on('click',"input[id='sendMsg']", function(){
		alert("hi2");
	})
})
</script>
</head>
<body>

<h2>중고장터</h2>

<table>
<tr>
<td>거래상태</td>
<td>글번호</td>
<td>제목</td>
<td>작성자</td>
<td>작성일</td>
</tr>

<c:forEach items="${storeList}" var="storeVO">
<tr>
<td>거래대기</td>
<td class="num">${storeVO.st_num}</td>
<td><a class="selectTitle" href="">${storeVO.st_title}</a></td>
<td>${storeVO.st_m_id}</td>
<td>${storeVO.st_date}</td>
</tr>
</c:forEach>
</table>

<c:forEach var="page" begin="1" end="${pageCnt}">
<a href="/library/store?page=${page}">${page}</a>
</c:forEach>
<br><br><br>

<div id="result" hidden="true">
</div>


</body>
</html>
