<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:wrapper title="Register">
    <jsp:body>
        <div class="row center-align feed">
            <div class="card-body">
                <h4 class="card-title">Cadastro de Grupo de Produto</h4>
                <form class="forms-sample" method="post" action="/cadastro/grupoproduto">
                    <div class="form-group">
                        <label for="descricaoGrupoProduto">descrição:</label>
                        <input type="text" class="form-control" name="descricaoGrupoProduto" id="descricaoGrupoProduto">
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Salvar</button>
                    <button class="btn btn-light">Cancelar</button>
                </form>
            </div>
        </div>
    </jsp:body>
</t:wrapper>
