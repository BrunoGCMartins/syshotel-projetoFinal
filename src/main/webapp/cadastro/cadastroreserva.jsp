<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:wrapper title="Register">
    <jsp:body>
        <div class="row center-align feed">
            <div class="card-body">
                <h4 class="card-title">Cadastro de Reserva</h4>
                <form class="forms-sample" method="post" action="/cadastro/reserva">
                    <div class="col-md-6">
                        <!--Pensar em como vai trazer os apartamentos já cadastrados pro usuario selecionar um apartamento já cadastrado-->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Nº Apartamento:</label>
                            <div class="col-sm-9">
                                <select name="apartamento" class="form-control">
                                    <c:forEach var="apartamento" items="${apartamentos}">
                                        <option value="${apartamento.getId()}">${apartamento.getNumero()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <!--Pensar em como vai trazer os clientes já cadastrados pro usuario selecionar um cliente já cadastrado-->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Nome do Cliente:</label>
                            <div class="col-sm-9">
                                <select name="cliente" class="form-control">
                                    <c:forEach var="cliente" items="${clientes}">
                                        <option value="${cliente.getId()}">${cliente.getNome()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Data de Entrada:</label>
                            <div class="col-sm-9">
                                <input name="dataEntrada" class="form-control" placeholder="dd/mm/aaaa" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Data de Saída:</label>
                            <div class="col-sm-9">
                                <input name="dataSaida" class="form-control" placeholder="dd/mm/aaaa" />
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Salvar</button>
                    <button class="btn btn-light">Cancelar</button>
                </form>
            </div>
        </div>
    </jsp:body>
</t:wrapper>
