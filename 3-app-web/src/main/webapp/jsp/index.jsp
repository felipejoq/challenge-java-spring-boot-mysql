<%@ page import="com.uncodigo.products.models.Sucursal" %>
<%@ page import="java.util.List" %>
<%@ page import="com.uncodigo.products.models.Producto" %>
<%@ page import="com.uncodigo.products.dtos.SucursalProductoStockDto" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    List<Sucursal> sucursales = (List<Sucursal>) request.getAttribute("sucursales");
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
    List<SucursalProductoStockDto> stocks = (List<SucursalProductoStockDto>) request.getAttribute("stocks");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Reporte de Sucursal, Producto y Stock</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-4">
    <h1 class="mb-4">Filtro de productos por sucursal</h1>
    <hr />
    <form method="post" action="<%=request.getContextPath()%>/filtrar" class="row g-3 mb-4">
        <div class="col-12 col-md-5">
            <label for="sucursalId" class="form-label">Sucursal</label>
            <select class="form-select" name="sucursalId" id="sucursalId" required>
                <option disabled>Elegir sucursal...</option>
                <% for(Sucursal sucursal : sucursales) { %>
                <option
                        value="<%=sucursal.getId()%>"
                        <%= sucursal.getId().equals(request.getAttribute("sucursalId")) ? "selected" : "" %>
                >
                    <%=sucursal.getId()%> <%=sucursal.getNombre()%>
                </option>
                <% } %>
            </select>
        </div>
        <div class="col-12 col-md-5">
            <label for="productoId" class="form-label">Producto</label>
            <select class="form-select" name="productoId" id="productoId">
                <option disabled>Elegir producto...</option>
                <% for(Producto producto : productos) { %>
                <option
                        value="<%=producto.getId()%>"
                        <%= producto.getId().equals(request.getAttribute("productoId")) ? "selected" : "" %>
                >
                    <%=producto.getId()%> <%=producto.getNombre()%>
                </option>
                <% } %>
            </select>
        </div>
        <div class="col-12 col-md-2 d-grid">
            <button type="submit" class="btn btn-primary mt-4 mt-md-0">Filtrar</button>
        </div>
    </form>
    <hr />
    <% if (stocks != null) { %>
    <h2 class="mb-4">Resultado de la consulta de stock</h2>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
            <tr>
                <th scope="col">Sucursal</th>
                <th scope="col">ID Producto</th>
                <th scope="col">Nombre Producto</th>
                <th scope="col">Stock</th>
            </tr>
            </thead>
            <tbody>
            <% for(SucursalProductoStockDto stock : stocks) { %>
            <tr>
                <td><%= stock.getNombreSucursal() %></td>
                <td><%= stock.getIdProducto() %></td>
                <td><%= stock.getNombreProducto() %></td>
                <td><%= stock.getCantidadStock() %></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
    <% } else { %>
    <div class="alert alert-warning" role="alert">
        No hay resultados.
    </div>
    <% } %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+HtYgI2C4QO65Voh1I1c8B5+E1z02" crossorigin="anonymous"></script>
</body>
</html>
