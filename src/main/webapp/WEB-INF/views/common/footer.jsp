<%--
  Created by IntelliJ IDEA.
  User: yannhodiesne
  Date: 19/12/2020
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<footer class="footer">
    <div class="container text-center p-3">
        <hr>
        <footer>
            <p>&copy; Copyright moi</p>
        </footer>
    </div>
</footer>

<spring:url value="/ressources/js/jquery-3.5.1.min.js" var="jquery" />
<script src="${jquery}"></script>

<spring:url value="/ressources/js/bootstrap.js" var="bootstrapJs" />
<script src="${bootstrapJs}"></script>

<spring:url value="/ressources/js/jquery-ui.min.js" var="jqueryUi" />
<script src="${jqueryUi}"></script>

<spring:url value="/ressources/js/navbar-active.js" var="navbarActive" />
<script src="${navbarActive}"></script>
