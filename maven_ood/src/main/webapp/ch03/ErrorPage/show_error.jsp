<%-- 
    Document   : show_error
    Created on : 2018. 3. 4, 오후 10:08:21
    Author     : skylo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>오류 원인</title>
    </head>
    <body>
        오류 원인은 <%= exception.toString() %>입니다.
    </body>
</html>
