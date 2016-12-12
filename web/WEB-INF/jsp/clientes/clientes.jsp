<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../templateJSP/templateinicio.jsp"/>

<div id="main" class="container-fluid">
    
    <script>
        $(document).ready(function(){
            $.ajax({
               url:"retorno",
               datatype:'json',
               success: function (data) {
                   $.each(data,function(idx,obj){
                       
                   });
               }
            });
            
        });
        
        
        
        
    </script>
    
    
    
    
    
    <h3 class="page-header">Clientes</h3>



    <div id="top" class="row">
        <div class="col-md-3">
            <h2>Lista clientes</h2>
        </div>

        <div class="col-md-6">
            <div class="input-group h2">
                <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar cliente">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
            </div>
        </div>

        <div class="col-md-3">
            <a href="addcliente" class="btn btn-primary pull-right h2">Novo cliente</a>
        </div>

    </div> <!-- /#top -->

    <hr />
    <div id="list" class="row">

        <div class="table-responsive col-md-12">
            <table class="table table-striped" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Telefone</th>                   
                        <th class="actions">Ações</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${lst}" var="cli">
                        <tr>
                            <td>${cli.idCliente}</td>
                            <td>${cli.nome}</td>
                            <td>${cli.telefone}</td>                    
                            <td class="actions">
                                <!--                        <a class="btn btn-success btn-xs" href="view.html">Visualizar</a>-->
                                <a class="btn btn-warning btn-xs" href="editcliente?id=${cli.idCliente}">Editar</a>
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


