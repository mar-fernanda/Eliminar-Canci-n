<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Agregar Canción</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <h2>Agregar Canción</h2>

    <form:form modelAttribute="cancion" action="${pageContext.request.contextPath}/canciones/procesa/agregar" method="post">
        <div class="form-row">
            <form:label path="titulo">Título:</form:label>
            <form:input path="titulo" cssClass="form-input"/>
            <form:errors path="titulo" cssClass="form-error"/>
        </div>

        <div class="form-row">
            <form:label path="artista">Artista:</form:label>
            <form:input path="artista" cssClass="form-input"/>
            <form:errors path="artista" cssClass="form-error"/>
        </div>

        <div class="form-row">
            <form:label path="album">Álbum:</form:label>
            <form:input path="album" cssClass="form-input"/>
            <form:errors path="album" cssClass="form-error"/>
        </div>

        <div class="form-row">
            <form:label path="genero">Género:</form:label>
            <form:input path="genero" cssClass="form-input"/>
            <form:errors path="genero" cssClass="form-error"/>
        </div>

        <div class="form-row">
            <form:label path="idioma">Idioma:</form:label>
            <form:input path="idioma" cssClass="form-input"/>
            <form:errors path="idioma" cssClass="form-error"/>
        </div>

        <button type="submit">Guardar</button>
    </form:form>

    <a class="btn" href="${pageContext.request.contextPath}/canciones">Volver a lista de canciones</a>
</body>
</html>
