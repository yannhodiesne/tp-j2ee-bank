<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: yannhodiesne
  Date: 19/01/2021
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../common/header.jsp" />
    <body>
        <jsp:include page="../common/menu.jsp" />

        <div class="container">
            <form:form name="f" action="#" modelAttribute="compte" method="post">
                <div class="row justify-content-md-center">
                    <h2>Créer un compte</h2>
                </div>
                <div class="form-group col-md-6">
                    <form:input type="hidden" path="id" readonly="true" />
                    <p>
                        Type :
                        <form:select path="type" id="type" cssClass="form-control">
                            <form:option value="Epargne">Epargne</form:option>
                            <form:option value="Courant">Courant</form:option>
                        </form:select>
                    </p>
                    <p>
                        Solde initial :
                        <form:input type="text" path="solde" cssClass="form-control" />
                    </p>
                    <div class="form-group col-md-6">
                        <button type="submit" class="btn btn-primary">Créer</button>
                    </div>
                </div>
            </form:form>
        </div>

        <jsp:include page="../common/footer.jsp" />
    </body>
</html>
