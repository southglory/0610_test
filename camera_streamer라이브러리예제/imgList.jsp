<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>전송된 파일</h1>
<%
	String imgPath = "C:\\Users\\Playdata\\Desktop\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img";
	System.out.println(imgPath);
	File imgDir = new File(imgPath);
	String[] files = imgDir.list();
	for(int i=0;i<files.length;i++){
		String f = files[i];
		System.out.println(f);
%>
<p>
<%=f %><br>
<img src="/img/<%=f %>" width="300" height="200"><br>
</p>
<%} %>
</body>
</html>