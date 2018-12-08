<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:wrapper title="Register">
    <jsp:body>
        <div class="row center-align feed">
            <div class="card-body">
                <h4 class="card-title">Cadastro de Cidade</h4>
                <form class="forms-sample" method="post" action="/cadastro/cidade">
                    <!--Pensar em como vai trazer os estados já cadastrados pro usuario selecionar um estado já cadastrado-->
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Estado:</label>
                            <div class="col-sm-9">
                                <select name="estado" class="form-control">
                                    <c:forEach var="estado" items="${estados}">
                                        <option value="${estado.getId()}">${estado.getNome()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nomeCidade">Cidade:</label>
                        <input type="text" class="form-control" name="nomeCidade" id="nomeCidade">
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Salvar</button>
                    <button class="btn btn-light">Cancelar</button>
                </form>
            </div>
        </div>
    </jsp:body>
</t:wrapper>
