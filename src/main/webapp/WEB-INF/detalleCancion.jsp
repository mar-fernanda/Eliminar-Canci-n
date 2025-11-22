<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Detalle Canción</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h2>Detalle de la Canción</h2>
    <p><b>Título:</b> <c:out value="${cancion.titulo}" /></p>
    <p><b>Artista:</b> <c:out value="${cancion.artista}" /></p>
    <p><b>Álbum:</b> <c:out value="${cancion.album}" /></p>
    <p><b>Género:</b> <c:out value="${cancion.genero}" /></p>
    <p><b>Idioma:</b> <c:out value="${cancion.idioma}" /></p>
    <p><b>Fecha Creación:</b> <c:out value="${cancion.fechaCreacion}" /></p>
    <p><b>Fecha Actualización:</b> <c:out value="${cancion.fechaActualizacion}" /></p>

<a href="/canciones/formulario/editar/${cancion.id}" class="btn">Editar Canción</a>
<br>
<a href="/canciones/eliminar/${cancion.id}"
    class="btn"
    onclick="return confirm('¿Seguro que deseas eliminar esta canción?');">
    Eliminar Canción</a>
    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>