<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 쓰기</title>
</head>
<body>
	<h2>자유게시판 댓글 쓰기</h2>
	<hr>
	 
	<table width="500" border="1" cellspacing="0" cellpadding="0">
		<form action="reply">
			<input type="hidden" name="bid" value="${content.bid }">
			<input type="hidden" name="bgroup" value="${content.bgroup }">
			<input type="hidden" name="bstep" value="${content.bstep }">
			<input type="hidden" name="bindent" value="${content.bindent }">
			<tr>
				<th with="100">글번호</th>
				<td >
				 ${content.bid }
				</td>
			
			</tr>
			
			<tr>
				<th>답변자</th>
				<td><input type="text" name="bname"  size="60"></td>
			
			</tr>
			<tr>
				<th>글제목</th>
				<td><input type="text" name="btitle" value="[답변] ${content.btitle }" size="60"></td>
			
			</tr>
			<tr>
				<th valign="top">내용</th>
				<td height="100" valign="top">
				<textarea rows="10" cols="45" name="bcontent">${content.bcontent }
				
				
				
				
				</textarea>
			</tr>
			
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="답변입력" >
					
					<input type="button" value="목록" onclick="javascript:window.location='list'">
				</td>
			</tr>
		</form>
	</table>
	
</body>
</html>