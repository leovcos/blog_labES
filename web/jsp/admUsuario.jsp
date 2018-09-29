<%-- 
    Document   : admUsuario
    Created on : 28/09/2018, 15:27:09
    Author     : leonardo
--%>

<%@page import="java.util.List"%>
<%@page import="api.modelo.Usuario"%>
<%@page import="core.servico.ServicoUsuarioImpl"%>
<%@page import="api.servico.ServicoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Adm Usuarios-Blog</title>
        <link href ="estilos/estiloAdmUsuario.css" rel ="stylesheet" type ="text/css">
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <section>
            <article> 
                <h1>Gerenciamento de usuarios</h1>
                <hr>
                <table>
                    <h2 >Usuarios cadastrados</h2>
                    <tr>
                        <th>ID</th>
                        <th>Usuario</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Excluir</th>
                    </tr>
                    <%
                        ServicoUsuario sUsuario = new ServicoUsuarioImpl();
                        List<Usuario> uBD = sUsuario.procurarTudo();
                        for (Usuario usuario : uBD) {
                            out.print("<tr>");
                            out.print("<td>" + usuario.getId().toString() + "</td>");
                            out.print("<td>" + usuario.getNome() + "</td>");
                            out.print("<td>" + usuario.getNomeUsuario() + "</td>");
                            out.print("<td>" + usuario.getEmail() + "</td>");
                    %>
                    <td> <a href="admUsuario?paramExcluir=<%=usuario.getId().toString()%>">Excluir esse!</a>
                    </td>
                    <%
                            out.print("</tr>");
                        }
                    %>
                </table>
            </article>
        </section>
    </body>
</html>