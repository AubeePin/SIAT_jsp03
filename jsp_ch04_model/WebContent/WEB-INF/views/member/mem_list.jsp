<%@page import="org.comstudy.member.model.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>멤버 목록</h1>

<%
List<MemberDTO> memList = (List<MemberDTO>)request.getAttribute("memList");
for(MemberDTO member : memList) {
%>	
	<p><a href="detail.do?seq=<%=member.getSeq()%>"><%=member.toString() %></a></p>
<% 
}
%>
</body>
</html>