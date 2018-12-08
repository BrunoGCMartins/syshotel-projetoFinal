<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:wrapper title="Register">
    <jsp:body>
        <div class="row center-align feed">
            <div class="card-body">
                <h4 class="card-title">Cadastro de Cliente</h4>
                <form class="forms-sample" method="post" action="/cadastro/cliente">
                    <p class="card-description">Dados Pessoais</p>
                    <input type="hidden" id="tfCodigo" name="tfCodigo" value="">
                    <div class="form-group">
                        <label for="nome">Nome</label>
                        <input name="nome" type="text" class="form-control" id="nome">
                    </div>
                    <div class="form-group">
                        <label for="rgCliente">RG</label>
                        <input name="rgCliente" type="text" class="form-control" id="rgCliente" placeholder="111.222.333-44">
                    </div>
                    <div class="form-group">
                        <label for="cpfCliente">CPF</label>
                        <input name="cpfCliente" type="text" class="form-control" id="cpfCliente" placeholder="111.222.333-44">
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Sexo:</label>
                                <div class="col-sm-4">
                                    <div class="form-radio">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="checkSexo"
                                                value="M"> Masculino
                                        </label>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-radio">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="checkSexo"
                                                value="F"> Feminino
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="card-description">Endereço</p>
                    <div class="form-group">
                        <label for="cidadeCliente">Cidade:</label>
                        <input name="cidadeCliente" type="text" class="form-control" id="cidadeCliente">
                    </div>
                    <div class="form-group">
                        <label for="estadoCliente">Estado:</label>
                        <input name="estadoCliente" type="text" class="form-control" id="estadoCliente">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Tipo de Longradouro:</label>
                            <div class="col-sm-9">
                                <select name="tipoLogradouro" class="form-control">
                                    <option value="Avenida - AV">Avenida - AV</option>
                                    <option value="Rua - R">Rua - R</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="longradouroCliente">Longradouro:</label>
                        <input name="longradouroCliente" type="text" class="form-control" id="longradouroCliente">
                    </div>
                    <div class="form-group">
                        <label for="rgCliente">Numero:</label>
                        <input name="numeroCliente" type="number" class="form-control" id="numeroCliente">
                    </div>
                    <div class="form-group">
                        <label for="complementoCliente">Complemento:</label>
                        <input name="complementoCliente" type="text" class="form-control" id="complementoCliente">
                    </div>
                    <div class="form-group">
                        <label for="bairroCliente">Bairro:</label>
                        <input name="bairroCliente" type="text" class="form-control" id="bairroCliente">
                    </div>
                    <div class="form-group">
                        <label for="cepCliente">CEP</label>
                        <input name="cepCliente" type="text" class="form-control" id="cepCliente" placeholder="11111-222">
                    </div>
                    <p class="card-description">Contato</p>
                    <div class="form-group">
                        <label for="telefoneResidencialCliente">Telefone Residencial:</label>
                        <input name="telefoneResidencialCliente" type="text" class="form-control" id="telefoneResidencialCliente" placeholder="(11)2222-3333">
                    </div>
                    <div class="form-group">
                        <label for="telefoneCelularCliente">Telefone Celular:</label>
                        <input name="telefoneCelularCliente" type="text" class="form-control" id="telefoneCelularCliente" placeholder="(11)2222-3333">
                    </div>
                    <div class="form-group">
                        <label for="emailCliente">E-mail:</label>
                        <input name="emailCliente" type="text" class="form-control" id="emailCliente">
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Salvar</button>
                    <button class="btn btn-light">Cancelar</button>
                </form>
            </div>

        </div>
    </jsp:body>
</t:wrapper>
