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

<div class="actions">
    <a href="/canciones/formulario/editar/${cancion.id}" class="btn">Editar Canción</a>

    <form action="/canciones/eliminar/${cancion.id}" method="post">
        <input type="hidden" name="_method" value="delete"/>
        <button type="submit" class="btn"
                onclick="return confirm('¿Seguro que deseas eliminar esta canción?');">
            Eliminar Canción
        </button>
    </form>
</div>

<a href="/canciones" class="btn">⬅ Volver al Inicio</a>


</body>
</html>