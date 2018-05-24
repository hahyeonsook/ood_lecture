<%-- 
    Document   : footer
    Created on : 2011. 2. 14, 오후 9:55:16
    Modified on: 2018. 4. 14
    Author     : jongmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer.jsp</title>
    </head>
    <body>
        <hr>
        페이지 하단에 들어갈 내용입니다. <br>
        날짜: <%= request.getParameter("date") %>
        사용자: <%= request.getParameter("user") %>
        사용자: <c:out value="${param.user}" default="이름 모름"/>
    </body>
</html>
