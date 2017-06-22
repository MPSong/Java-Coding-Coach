<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "PaperClip.PaperClip" %>
<%
    PaperClip p = new PaperClip();
    String texttest = request.getParameter("test");                  
    if(!(texttest==null)){
        String test = p.searchMessage(texttest);
        %><%=test%><%
    }
%>