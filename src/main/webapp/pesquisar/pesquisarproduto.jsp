<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:wrapper title="Pesquisar">
    <jsp:body>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Produtos</h4>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Cod</th>
                                    <th>Nome</th>
                                    <th>Marca</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="produto" items="${produtos}">
                                    <tr>
                                        <td>${produto.getId()}</td>
                                        <td>${produto.getNome()}</td>
                                        <td>${produto.getMarca()}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </jsp:body>
</t:wrapper>
