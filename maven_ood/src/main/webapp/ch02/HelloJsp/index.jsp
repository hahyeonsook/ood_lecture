<%-- 
    Document   : index
    Created on : 2018. 3. 4, 오후 10:00:01
    Author     : skylo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Hello, JSP! </title>
    </head>
    <body>
        <h1>첫 번째 JSP 웹 응용프로그램</h1>
        <hr>
        <br>

        1. JSP 주석: <%--이 부분은 웹 브라우저에서 볼 수 없습니다. --%> <br>

        2. HTML 주석: <!-- 볼 수 있음 / 1 + 2 = ${1+2} --> <br>

        3. 선언(declation) 사용: &nbsp;
        <%! int a = 1;
            int b = 2;

            public String getName() {
                return "철수";
            }
        %>

        a + b = <%= a + b%> <br>

        4. 스크립트 표현식(expression):  <%= new java.util.Date()%>, 
        <%= getName()%> <br>

        5. 스크립틀릿(scriptlet) 사용:
        <% int c = 3;
            int d = 4;
        %>

        c + d = <%= c + d%> <br>

        <%  for (int i = 0; i < 5; i++) {%>
        i = <%= i%>   &nbsp;
        <%  }%>
    </body>
</html>
