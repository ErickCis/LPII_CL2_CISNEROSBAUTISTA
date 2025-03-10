<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="model.TblProductocl2" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Productos</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1 class="text-center mt-5">Listado de Productos</h1>
    <h2 class="text-center">
        <a href="RegistrarProducto.jsp" class="btn btn-primary mt-3 mb-3">Registrar Producto</a>
    </h2>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Precio Venta</th>
                    <th>Precio Compra</th>
                    <th>Estado</th>
                    <th>Descripcion</th>
                </tr>
            </thead>
            <tbody>
            <%
            List<TblProductocl2> listadoproducto = (List<TblProductocl2>)request.getAttribute("listadoproductos");
            if(listadoproducto !=null){
                for(TblProductocl2 pro:listadoproducto){
                    %>
                    <tr>
                        <td><%=pro.getIdproductocl2() %></td>
                        <td><%=pro.getNombrecl2() %></td>
                        <td><%=pro.getPrecioventacl2() %></td>
                        <td><%=pro.getPreciocompcl2() %></td>
                        <td><%=pro.getEstadocl2() %></td>
                        <td><%=pro.getDescripcl2() %></td>
                    </tr>
                    <% 
                }//fin del for
                %>
                <%
            }//fin de la condicion
            %>
            </tbody>
        </table>
    </div>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
