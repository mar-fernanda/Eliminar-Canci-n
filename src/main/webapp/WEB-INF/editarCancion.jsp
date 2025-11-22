<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Editar Canción</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <h2>Editar Canción</h2>
    <form:form modelAttribute="cancion" action="/canciones/procesa/editar/${cancion.id}" method="post">
        <input type="hidden" name="_method" value="put"/>

        <form:label path="titulo">Título:</form:label>
        <form:input path="titulo"/>
        <form:errors path="titulo"/><br>

        <form:label path="artista">Artista:</form:label>
        <form:input path="artista"/>
        <form:errors path="artista"/><br>

        <form:label path="album">Álbum:</form:label>
        <form:input path="album"/>
        <form:errors path="album"/><br>

        <form:label path="genero">Género:</form:label>
        <form:input path="genero"/>
        <form:errors path="genero"/><br>

        <form:label path="idioma">Idioma:</form:label>
        <form:input path="idioma"/>
        <form:errors path="idioma"/><br>

        <button type="submit">Actualizar</button>
    </form:form>

    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>