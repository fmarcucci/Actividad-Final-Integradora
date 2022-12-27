<%-- 
    Document   : socios
    Created on : 13 dic 2022, 11:28:55
    Author     : Elizabeth
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Listado de socios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/css/style.css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- Fuentes-->
        <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/ca22557723.js" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <div class="container text-center">
             <h3>Listado de Socios del Gym</h3>
            <div class="row">
                
                <table class="table table-bordered border-primary">
                    <thead>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Direccion</th>
                    <th>Localidad</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Email</th>
                    <th>Telefono</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                   
                    </thead>
                    
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                    for(int x=0;x<resultado.size();x++)
                    {
                     String ruta="SociosController?accion=modificar&id="+resultado.get(x).getIdSocio();
                     String rutaE="SociosController?accion=eliminar&id="+resultado.get(x).getIdSocio();
                    
                    %>
                    
                    <tr>
                        <td><%=resultado.get(x).getIdSocio()%></td>
                        <td><%=resultado.get(x).getNombre()%></td>
                        <td><%=resultado.get(x).getApellido()%></td>
                        <td><%=resultado.get(x).getDireccion()%></td>
                        <td><%=resultado.get(x).getLocalidad()%></td>
                        <td><%=resultado.get(x).getFnac()%></td>
                        <td><%=resultado.get(x).getEmail()%></td>
                        <td><%=resultado.get(x).getTelefono()%></td>
                        <td><a href="<%=ruta%>"> <i class="fa-solid fa-arrow-right"></i> </a></td>
                        <td align="center"><a href="<%=rutaE%>"> <i class="fa-solid fa-xmark"></i> </a></td>
                        
                    </tr>
                    <%
                    }
                    %>
                    
                    
                </table>
                 <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a class="btn btn-outline-success col-4 m-4">Agregar socio</a>
                 </div>
                    
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-end">
                      <li class="page-item disabled">
                        <a class="page-link">Previo</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item"><a class="page-link" href="#">4</a></li>
                      <li class="page-item"><a class="page-link" href="#">5</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">Próximo</a>
                      </li>
                    </ul>
                </nav>
                    
                    
                
            </div>
            
            
            
        </div>
        
        
        
        
    </body>
</html>

