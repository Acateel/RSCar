<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Taras
  Date: 22.05.2022
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <jsp:include page="../bootstrapHead.html"/>
    <style>
        .back {
            background: #e2e2e2;
            width: 100%;
            position: absolute;
            top: 0;
            bottom: 0;
        }

        .div-center {
            width: 400px;
            height: 400px;
            background-color: #fff;
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            margin: auto;
            max-width: 100%;
            max-height: 100%;
            overflow: auto;
            padding: 1em 2em;
            border-bottom: 2px solid #ccc;
            display: table;
        }

        div.content {
            display: table-cell;
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="back">
    <div class="div-center">
        <div class="content">
            <form action="Login" method="post">
                <div class="form-group">
                    <label for="login">Login</label>
                    <input name="login" type="text" class="form-control" id="login" placeholder="Login">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input name="password" type="password" class="form-control" id="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
                <a href="Registration">
                    <button type="button" class="btn btn-link">Registered</button>
                </a>
                <a href="${pageContext.request.contextPath}/index.jsp">
                    <button type="button" class="btn btn-link">Back</button>
                </a>
                <div class="text-danger">
                    <h5>${requestScope.Error}</h5>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
