<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Producto</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1 class="text-center mt-5">Registrar Producto</h1>
    <form action="ControladorProducto" method="post" class="border p-4 bg-light">
        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" name="nombre" id="nombre" class="form-control">
        </div>
        <div class="form-group">
            <label for="precioventa">Precio de Venta</label>
            <input type="text" name="precioventa" id="precioventa" class="form-control">
        </div>
        <div class="form-group">
            <label for="preciocompra">Precio de Compra</label>
            <input type="text" name="preciocompra" id="preciocompra" class="form-control">
        </div>
        <div class="form-group">
            <label for="estado">Estado</label>
            <input type="text" name="estado" id="estado" class="form-control">
        </div>
        <div class="form-group">
            <label for="descrip">Descripcion</label>
            <input type="text" name="descrip" id="descrip" class="form-control">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Registrar Producto</button>
        </div>
    </form>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
