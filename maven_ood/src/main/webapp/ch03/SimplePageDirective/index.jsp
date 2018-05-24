<%-- 
    Document   : index
    Created on : 2018. 2. 27, 오후 9:14:14
    Author     : Prof. Jong Min Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page info="page 지시어 사용 방법을 보여줍니다." %>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>page 지시어 사용 방법</title>
    </head>
    <body>
        지금 시간은 <%= new Date() %>입니다.
    </body>
</html>
