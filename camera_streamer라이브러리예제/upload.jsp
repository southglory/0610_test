<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% //��ũ��Ʈ��
	System.out.println("start");
    request.setCharacterEncoding("UTF-8");//���ڵ� ����
    int maxSize = 10*1024*1024; //���������� �ִ� ũ��
    String savePath = "C:\\Users\\Playdata\\Desktop\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img\\";
    String format = "UTF-8";
    String uploadFile="";
    String type = "";
    try{
        MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format, 
        		new DefaultFileRenamePolicy());
        
         String title = multi.getParameter("title");//�Է¾��
         type = multi.getParameter("type");
         System.out.println("title:"+title);
         //uploadFile = multi.getOriginalFileName("file");
        multi.getFile("file");//���Ͼ��ε�
        System.out.println("type:"+type);
    }catch(Exception e){
        e.printStackTrace();
    }
    if(type.equals("pc")){
    	response.sendRedirect("imgList.jsp");//imgList.jsp�� �̵�
    }else if(type.equals("raspberry")){
    	response.sendRedirect("ras.jsp");
    }
%>
</body>
</html>