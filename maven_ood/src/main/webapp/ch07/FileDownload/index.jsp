<%-- 
    Document   : index
    Created on : 2018. 5. 25, 오후 10:34:15
    Author     : hs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<c:set value="/home/hs/다운로드/jsp" var="targetDirectory"/>

<jsp:useBean id="fileList" scope="page" class="cse.maven_ood.ch07.beans.FileListBean"/>
<jsp:setProperty name="fileList" property="dirName" value="${targetDirectory}"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>파일 내려받기</title>
    </head>
    <body>
        <h1>파일 내려받기</h1>
        <hr/>
        원하는 파일을 선택하세요.<br/><br/>
        
        <form action="DownloadServlet" method="POST">
            <c:forEach var="fileName" items="${fileList.relativeFileList}">
                <input type="radio" name="D1" value="${fileName}"/>
                ${fileName} <br/>
            </c:forEach>
            <br/>
            <input type="hidden" name="AbsoluePath"
                   value="${targetDirectory}" />
            <input type="submit" value="내려받기" />
        </form>
    </body>
</html>
