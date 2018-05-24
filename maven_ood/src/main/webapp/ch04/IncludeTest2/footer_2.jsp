<%-- 
    Document   : footer
    Created on : 2011. 2. 14, 오후 9:55:16
    Author     : jongmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<hr>
페이지 하단에 들어갈 내용입니다. <br>
날짜: <%= request.getParameter("date")%>
사용자: <%= request.getParameter("user")%>
