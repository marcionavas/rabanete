<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../templateJSP/templateinicio.jsp"/>

<div id="main" class="container-fluid">
    <h3 class="page-header">Registrar nova Venda</h3>

    <f:form id="vendaForm" action="addvenda" modelAttribute="Cliente" method="POST">



        <!--        <div class="row">
                    <div class="form-group col-md-4">
                        <label for="Nome">Nome</label>
                        <input type="text" name="nome" class="form-control" id="nome" />
                    </div>
                    <div class="form-group col-md-4">
                        <label for="Telefone">Telefone</label>
                        <input name="telefone" type="number" class="form-control" id="telefone"/>
                    </div>
                </div>-->

        <div class="row">
            <div class="form-group col-md-4">
                <label for="exampleInputEmail1">Data da Venda</label>
                <input type="date" class="form-control" id="exampleInputEmail1" placeholder="dd/mm/aaaa" required>
            </div>
            <div class="form-group col-md-8">
                <label for="exampleInputEmail1">Cliente</label>
                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Digite para pesquisar" required="">
            </div>
<!--            <div class="form-group col-md-4">
                <label for="exampleInputEmail1">Campo Três</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>-->
        </div>

        <div class="row">
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Quatro</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Cinco</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Seis</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Sete</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-6">
                <label for="exampleInputEmail1">Campo Oito</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-6">
                <label for="exampleInputEmail1">Campo Nove</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Dez</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Onze</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Doze</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-3">
                <label for="exampleInputEmail1">Campo Treze</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-6">
                <label for="exampleInputEmail1">Campo Quatorze</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
            <div class="form-group col-md-6">
                <label for="exampleInputEmail1">Campo Quinze</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
            </div>
        </div>
        <hr/>









        <div id="actions" class="row">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Salvar</button>

                <!--<input type="submit" id="nomedpid" value="save"/>-->
                <a href="vendas" class="btn btn-default">Cancelar</a>
            </div>
        </div>
        <hr/>
    </f:form>

</div>

<jsp:include page="../templateJSP/templatefim.jsp"/>