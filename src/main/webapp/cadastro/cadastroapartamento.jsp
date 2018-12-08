<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:wrapper title="Register">
    <jsp:body>
        <div class="row center-align feed">
            <div class="card-body">
                <h4 class="card-title">Cadastro de Apartamento</h4>
                <form class="forms-sample" method="post" action="/cadastro/apartamento">
                    <div class="form-group">
                        <label for="numeroApartamento">Numero:</label>
                        <input name="numeroApartamento" type="number" class="form-control" id="numeroApartamento">
                    </div>
                    <div class="form-group">
                        <label for="andarApartamento">Andar:</label>
                        <input name="andarApartamento" type="number" class="form-control" id="andarApartamento">
                    </div>
                    <div class="form-group">
                        <label for="descricaoApartamento">descrição:</label>
                        <input name="descricaoApartamento" type="text" class="form-control" id="descricaoApartamento">
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Salvar</button>
                    <button class="btn btn-light">Cancelar</button>
                </form>

            </div>

        </div>
    </jsp:body>
</t:wrapper>
