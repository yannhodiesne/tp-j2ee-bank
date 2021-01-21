<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: yannhodiesne
  Date: 19/01/2021
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../common/header.jsp" />

    <body>
        <jsp:include page="../common/menu.jsp" />

        <div class="container">
            <div class="panel panel-info">
                <div class="panel-body">
                    <div class="row justify-content-md-center">
                        <h2>Créer une opération</h2>
                    </div>
                    <form:form name="f" action="#" modelAttribute="operation" method="post">
                        <div class="form-group col-md-6">
                            <p>
                                Sélectionnez le compte concerné :
                                <form:select path="compte.id" id="compte" cssClass="form-control">
                                    <form:option value="-1">Aucun</form:option>
                                    <form:options items="${comptes}" itemLabel="id" itemValue="id" />
                                </form:select>
                            </p>
                            <p>
                                Date :
                                <form:input type="date" path="date" cssClass="form-control" />
                            </p>
                            <p>
                                Type :
                                <form:select path="type" id="type" cssClass="form-control">
                                    <form:option value="Depot">Dépôt</form:option>
                                    <form:option value="Retrait">Retrait</form:option>
                                </form:select>
                            </p>
                            <p>
                                Montant :
                                <form:input path="montant" cssClass="form-control" />
                            </p>
                            <div class="form-group col-md-6">
                                <button type="submit" class="btn btn-primary">Créer</button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>

        <jsp:include page="../common/footer.jsp" />
    </body>
</html>
