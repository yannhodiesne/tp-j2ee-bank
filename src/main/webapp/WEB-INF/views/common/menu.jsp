<%--
  Created by IntelliJ IDEA.
  User: yannhodiesne
  Date: 19/01/2021
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/" var="home" />
<spring:url value="/compte" var="compte"/>
<spring:url value="/operation" var="operation"/>

<nav class="navbar navbar-expand navbar-dark bg-dark">
    <a class="navbar-brand" href="${home}">Home</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-item nav-link" href="${compte}">Comptes</a>
            </li>
            <li class="nav-item">
                <a class="nav-item nav-link" href="${operation}">Operations</a>
            </li>
        </ul>
    </div>
</nav>

