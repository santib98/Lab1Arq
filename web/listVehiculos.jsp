
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h1>Lista de Vehiculos</h1>
        <table border="1" align="center"  class="table table-hover">
                <thead>
                <tr>
                    <th>Placa</th>
                    <th>Ciudad</th>
                    <th>Modelo</th>
                    <th>Marca</th>
                    <th>Referencia</th>
                    <th>Precio</th>
                    <th>Especificaciones</th>
                    <th>Color</th>
                    <th>Imagen</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
        <c:forEach var="a" items="${vehiculos}">
        <tr>
            <td>${a.placa}</td>
            <td>${a.ciudad}</td>
            <td>${a.modelo}</td>
            <td>${a.marca}</td>
            <td>${a.referencia}</td>
            <td>${a.precio}</td>
            <td>${a.especificaciones}</td>
            <td>${a.color}</td>
            <td><img src="${a.image}"/></td>
            <td><a onclick="return confirm('Esta seguro?')" href="VehiculoServlet?action=delete&placa=${a.placa}&ciudad=${a.ciudad}">Delete</a></td>
        </tr>         

        <hr/>
    </c:forEach>        
    </table>
</body>
</html>
