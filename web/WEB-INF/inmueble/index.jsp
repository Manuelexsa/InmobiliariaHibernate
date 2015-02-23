<%@page import="java.util.List"%>
<%@page import="hibernate.Inmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inmobiliaria</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/styles.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1>Inmobiliaria</h1>
        </header>
        <div class="contenedor">
            
            <table class="inmuebles" border="1">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Tipo</th>
                        <th>Localidad</th>
                        <th>Direccion</th>
                        <th>Precio</th>
                        <th>Usuario</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Inmueble> lista = (List<Inmueble>) request.getAttribute("datos");
                        for (Inmueble i : lista) {
                    %>
                    <tr>
                        <td><%= i.getId()%></td>
                        <td><%= i.getTipo()%></td>
                        <td><%= i.getDireccion()%></td>
                        <td><%= i.getLocalidad()%></td>
                        <td><%= i.getPrecio()%></td>
                        <td><%= i.getUsuario()%></td>
                        <td><a href="control?target=inmueble&op=delete&action=op&id=<%= i.getId()%>"><img class="icono" src="resources/delete.png"/></a></td>
                        <td><a href="control?target=inmueble&op=edit&action=view&id=<%= i.getId()%>"><img class="icono" src="resources/edit.png"/></a></td>
                        <td><a href="foto?target=foto&op=insert&action=view&id=<%= i.getId()%>"><img class="icono" src="resources/add_img.png"/></a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                <h4>
                <a href="control?target=inmueble&op=insert&action=view">insertar Inmueble</a>
            </h4>
        </div>
    </body>
</html>