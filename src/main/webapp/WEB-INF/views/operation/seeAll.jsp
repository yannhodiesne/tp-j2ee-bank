<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yannhodiesne
  Date: 19/01/2021
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../common/header.jsp" />

    <body>
        <jsp:include page="../common/menu.jsp" />

        <div class="container">
            <h2>Liste des opérations</h2>

            <div class="panel panel-info">
                <div class="panel-body">
                    <table class="table table-striped table-hover">
                        <thead class="thead">
                        <tr>
                            <th>Numéro</th>
                            <th>Date</th>
                            <th>Compte</th>
                            <th>Type</th>
                            <th>Montant</th>
                        </tr>
                        </thead>
                        <c:forEach var="operation" items="${operations}">
                            <tr>
                                <td>
                                    <c:out value="${operation.id}" />
                                </td>
                                <td>
                                    <c:out value="${operation.date}" />
                                </td>
                                <td>
                                    <c:out value="${operation.compte.id}" />
                                </td>
                                <td>
                                    <c:out value="${operation.type}" />
                                </td>
                                <td>
                                    <c:out value="${operation.montant}" />
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <div class="container">
            <button onClick="window.location.href='operation/create'" class="btn btn-primary">Créer une opération</button>
        </div>

        <jsp:include page="../common/footer.jsp" />
    </body>
</html>
