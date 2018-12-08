<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:wrapper title="Register">
    <jsp:body>
        <div class="row center-align feed">
            <div class="card-body">
                <h4 class="card-title">Cadastro de Fornecedor</h4>
                <form class="forms-sample" method="post" action="/cadastro/fornecedor">
                    <div class="form-group">
                        <label for="nomeFornecedor">Nome:</label>
                        <input type="text" class="form-control" name="nomeFornecedor" id="nomeFornecedor">
                    </div>
                    <div class="form-group">
                        <label for="cnpjFornecedor">CNPJ:</label>
                        <input type="text" class="form-control" name="cnpjFornecedor" id="cnpjFornecedor" placeholder="11.222.333-4444-55">
                    </div>
                    <div class="form-group">
                        <label for="telefoneCelularFornecedor">Telefone Celular:</label>
                        <input type="text" class="form-control" name="telefoneCelularFornecedor" id="telefoneCelularFornecedor" placeholder="(11)2222-3333">
                    </div>
                    <div class="form-group">
                        <label for="emailFornecedor">E-mail:</label>
                        <input type="text" class="form-control" name="emailFornecedor" id="emailFornecedor">
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Salvar</button>
                    <button class="btn btn-light">Cancelar</button>
                </form>
            </div>
        </div>
    </jsp:body>
</t:wrapper>
