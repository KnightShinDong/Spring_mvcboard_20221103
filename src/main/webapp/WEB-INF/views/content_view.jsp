<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용 보기</title>
</head>
<body>
	<h2> 글 내용 보기</h2>
	<hr>
	<table width="500" border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th with="100">글번호</th>
			<td >
			 ${content.bid }
			</td>
		
		</tr>
		<tr>
			<th>조회수</th>
			<td>${content.bhit }</td>
		
		</tr>
		<tr>
			<th>글쓴이</th>
			<td>${content.bname }</td>
		
		</tr>
		<tr>
			<th>글제목</th>
			<td>${content.btitle }</td>
		
		</tr>
		<tr>
			<th >내용</th>
			<td height="100" valign="top">${content.bcontent }</td>
		
		</tr>
		<tr>
			<th>등록일</th>
			<td>${content.bdate }</td>
		
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="답변" onclick="javascript:window.location='reply_write?bid=${content.bid}'">
				<input type="button" value="수정" onclick="javascript:window.location='modify_view?bid=${content.bid}'">
				<input type="button" value="삭제" onclick="javascript:window.location='delete?bid=${content.bid}'">
				<input type="button" value="목록" onclick="javascript:window.location='list'">
			</td>
		</tr>
		
	</table>
</body>
</html>