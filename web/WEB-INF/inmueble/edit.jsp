<%@page import="hibernate.Inmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //String id = request.getParameter("id");
    Inmueble i = (Inmueble)request.getAttribute("inmueble");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/styles.css" rel="stylesheet" type="text/css">
        <title>Editar Inmueble</title>
    </head>
    <body>
        <header>
            <h1>Editar Inmueble</h1>
        </header>
        <div class="contenedor">
        <form action="control" method="POST">
            Tipo: <input type="text" name="tipo" value="<%= i.getTipo()%>" />
            <br>
            Direccion: <input type="text" name="direccion" value="<%= i.getDireccion()%>" />
            <br>
            Localidad: <input type="text" name="localidad" value="<%= i.getLocalidad()%>" />
            <br>
            Precio: <input type="text" name="precio" value="<%= i.getPrecio()%>" />
            <br>
            Usuario: <input type="text" name="usuario" value="<%= i.getUsuario()%>" />
            <br>
            <input type="hidden" name="target" value="inmueble" />
            <input type="hidden" name="op" value="edit" />
            <input type="hidden" name="action" value="op" />
            <input type="hidden" name="id" value="<%= i.getId()%>" />
            <input type="submit" value="insertar" />
        </form>
            </div>
    </body>
</html>