<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글목록</title>
</head>
<body>
   <h2>자유게시판</h2>
   <hr>
   <table border="1" cellspacing="0" cellpadding="0" width="1000">
      <tr bgcolor="pink" height="40" align="center" >
         <td>번호</td>
         <td>글쓴이</td>
         <td width="500">글제목</td>
         <td>게시일</td>
         <td>조회수</td>	
      </tr>
      
       총 게시글 수 : ${boardCount}개
   
   
  	  <c:forEach items="${list}" var="bdto">  <!-- dto가 담긴 리스트를 bdto에 담음  -->
      <tr height="30" align="center">
         <td>${bdto.bid }</td>
         <td>${bdto.bname }</td>
         <td align="left">
         	<c:forEach begin="1" end="${bdto.bindent}">&nbsp;&nbsp;&nbsp;</c:forEach>
         	<a href="content_view?bid=${bdto.bid }"> ${bdto.btitle }</a>
         							<!-- 파라미터 값을 넘겨줘야 삭제든 수정이든 가능!!! 중요!!!-->
         </td>
         <td>${bdto.bdate }</td>
         <td>${bdto.bhit }</td>
      </tr>
  	  </c:forEach>
  
      
      <tr height="30">
         <td colspan="5" align="right"><input type="button" value="글쓰기" onclick="javascript:window.location='write_form'"></td>
         <!-- <a href="write_form -->
      
      
      </tr>
   </table>
</body>
</html>
