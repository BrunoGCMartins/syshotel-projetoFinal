<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:wrapper title="Pesquisar">
    <jsp:body>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Clientes</h4>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Cod</th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>Telefone</th>
                                    <th>Tipo Logradouro</th>
                                    <th>Logradouro</th>
                                    <th>Número</th>
                                    <th>Bairro</th>
                                    <th>Município</th>
                                    <th>Estado</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cliente" items="${clientes}">
                                        <tr>
                                            <td>${cliente.getId()}</td>
                                            <td>${cliente.getNome()}</td>
                                            <td>${cliente.getCpf()}</td>
                                            <td>${cliente.getTelefone()}</td>
                                            <td>${cliente.getEndereco().getTipoLogradouro()}</td>
                                            <td>${cliente.getEndereco().getLogradouro()}</td>
                                            <td>${cliente.getEndereco().getNumero()}</td>
                                            <td>${cliente.getEndereco().getBairro()}</td>
                                            <td>${cliente.getEndereco().getMunicipio().getNome()}</td>
                                            <td>${cliente.getEndereco().getMunicipio().getEstado().getNome()}</td>
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
