<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../templateJSP/templateinicio.jsp"/>

<div id="main" class="container-fluid">
    <h3 class="page-header">Vendas</h3>



    <div id="top" class="row">
        <div class="col-md-3">
            <h2>Lista Vendas</h2>
        </div>

        <div class="col-md-6">
            <div class="input-group h2">
                <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar venda">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
            </div>
        </div>

        <div class="col-md-3">
            <a href="addvenda" class="btn btn-primary pull-right h2">Nova venda</a>
        </div>

    </div> <!-- /#top -->

    <hr />
    <div id="list" class="row">

        <div class="table-responsive col-md-12">
            <table class="table table-striped" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cliente</th>
                        <th>Data da venda</th>
                        <th>NF</th>       
                        <th>Valor da venda</th>       
                        <th class="actions">Ações</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${vendaslist}" var="venda">
                        <tr>
                            <td>${venda.idVenda}</td>
                            <td>${venda.cliente.nome}</td>
                            <td>${venda.dataVenda}</td>  
                            <td>${venda.nf.numNf}</td> 
                            <td>${venda.nf.valorNf}</td> 
                            <td class="actions">
                               
                                <a class="btn btn-warning btn-xs" href="editvenda?id=${venda.idVenda}">Editar</a>
                                <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>

                            </td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>




    </div> <!-- /#list -->

    <div id="bottom" class="row">

        <div class="col-md-12">

            <ul class="pagination">
                <li class="disabled"><a>&lt; Anterior</a></li>
                <li class="disabled"><a>1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
            </ul><!-- /.pagination -->

        </div>

    </div> <!-- /#bottom -->

</div>

<jsp:include page="../templateJSP/templatefim.jsp"/>


