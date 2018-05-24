<%-- 
    Document   : index
    Created on : 2018. 4. 14, 오후 8:26:17
    Author     : Prof. Jong Min Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.6.3.7 Scripting Elements</title>
    </head>
    <body>
        <jsp:declaration>
            String userName = "홍길동";
            int 나이 = 20;
        </jsp:declaration>

        <jsp:scriptlet>
            나이 += 5;
        </jsp:scriptlet>

        이름:
        <jsp:expression>userName</jsp:expression>
            <br/>
            나이:
        <jsp:expression>나이</jsp:expression>
    </body>
</html>
