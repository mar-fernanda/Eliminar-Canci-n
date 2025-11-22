<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista de Canciones</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h2>Lista de Canciones</h2>

    <table class="table">
        <thead>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>Detalle</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="cancion" items="${listaCanciones}">
                <tr>
                    <td>${cancion.titulo}</td>
                    <td>${cancion.artista}</td>
                    <td><a href="/canciones/detalle/${cancion.id}" class="link">Detalle</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/canciones/formulario/agregar" class="btn">Agregar Canción</a>
</body>
</html>
