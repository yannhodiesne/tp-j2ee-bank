<%--
  Created by IntelliJ IDEA.
  User: yannhodiesne
  Date: 19/12/2020
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>TP J2EE</title>

    <spring:url value="/ressources/css/jquery-ui.min.css" var="jqueryCss" />
    <link href="${jqueryCss}" rel="stylesheet" />

    <spring:url value="/ressources/css/bootstrap.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
</head>
