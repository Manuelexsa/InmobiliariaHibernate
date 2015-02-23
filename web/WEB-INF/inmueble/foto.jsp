<%-- 
    Document   : index
    Created on : 22-feb-2015, 10:57:07
    Author     : kronos
--%>
<%@page import="hibernate.Fotos"%>
<%@page import="java.util.List"%>
<%@page import="hibernate.Inmueble"%>
<% Inmueble inmueble = (Inmueble) request.getAttribute("inmueble");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inmobiliaria</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/styles.css" rel="stylesheet" type="text/css">
        <title>Añadir Foto</title>
    </head>
    <body>
        <header>
            <h1>Añadir Foto</h1>
        </header>
        <div class="contenedor">
        <form action="foto" method="post" enctype="multipart/form-data">
            <input type="file" name="file" />
            <input type="hidden" name="target" value="foto" />
            <input type="hidden" name="op" value="insert" />
            <input type="hidden" name="action" value="op" />
            <input type="hidden" name="id" value="<%= inmueble.getId()%>" />
            <input type="submit" value="Subir"/>
        </form>

        <%
            List<Fotos> lista = (List<Fotos>) request.getAttribute("datos");
            for (Fotos p : lista) {
        %>
        <table>
            <tr>
                <td><img src="<%= p.getRuta()%>" width="200" height="200"/></td>
                <td><a href="foto?target=foto&op=delete&action=op&id=<%= p.getId()%>">borrar</a></td>
            </tr>
        </table>
        <%
            }
        %>
        </div>
    </body>
</html>
