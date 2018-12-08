<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:wrapper title="Pesquisar">
    <jsp:body>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Reservas</h4>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Cod</th>
                                    <th>Status</th>
                                    <th>Cód Cliente</th>
                                    <th>Cliente</th>
                                    <th>Cód Apt</th>
                                    <th>Número</th>
                                    <th>Andar</th>
                                    <th>Descrição</th>
                                    <th>Data Entrada</th>
                                    <th>Data Saída</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="reserva" items="${reservas}">
                                        <tr>
                                            <td>${reserva.getId()}</td>
                                            <td>${reserva.getStatus()}</td>
                                            <td>${reserva.getCli().getId()}</td>
                                            <td>${reserva.getApt().getId()}</td>
                                            <td>${reserva.getApt().getNumero()}</td>
                                            <td>${reserva.getApt().getAndar()}</td>
                                            <td>${reserva.getApt().getDescricao()}</td>
                                            <td>${reserva.getDataDeEntrada().getTime().toString()}</td>
                                            <td>${reserva.getDataDeSaida().getTime().toString()}</td>
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
