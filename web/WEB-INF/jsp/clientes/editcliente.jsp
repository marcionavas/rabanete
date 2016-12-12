<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../templateJSP/templateinicio.jsp"/>

<div id="main" class="container-fluid">
    <h3 class="page-header">Editar Cliente</h3>

    <f:form id="clienteForm" action="update" modelAttribute="Cliente" method="POST">
        <div class="row">
            <input  type="hidden" name="idCliente" value="${editcli.idCliente}"/>

            <div class="form-group col-md-4">
                <label for="Nome">Nome</label>
                <input type="text" name="nome" value="${editcli.nome}" class="form-control" id="nome" />
            </div>
            <div class="form-group col-md-4">
                <label for="Telefone">Telefone</label>
                <input name="telefone" type="number" value="${editcli.telefone}" class="form-control" id="telefone"/>
            </div>
        </div>

        <hr/>

        <div id="actions" class="row">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Salvar</button>

                <!--<input type="submit" id="nomedpid" value="save"/>-->
                <a href="clientes" class="btn btn-default">Cancelar</a>
            </div>
        </div>
        <hr/>
    </f:form>

</div>

<jsp:include page="../templateJSP/templatefim.jsp"/>