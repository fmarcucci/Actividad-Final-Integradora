<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Modificar socios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/ca22557723.js" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <div class="container">
            <h1 class="text-center">Agregar Socio</h1>
            <div class="row"></div>
            
            
            
            <form class="p-5" method="post" action="SociosController?accion=insert">
                
                <div class="mb-3">
                    <label for="id" class="form-label">ID</label>
                    <input type="text" class="form-control" name="nombre" id="id" readonly="true" >
                </div>
                
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" >
                </div>
                
                <div class="mb-3">
                    <label for="apellido" class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellido" id="apellido" >
                </div>
                
                <div class="mb-3">
                    <label for="direccion" class="form-label">Direccion</label>
                    <input type="text" class="form-control" name="direccion" id="direccion" >
                </div>
                
                <div class="mb-3">
                    <label for="localidad" class="form-label">Localidad</label>
                    <input type="text" class="form-control" name="localidad" id="localidad" >
                </div>
                
                <div class="mb-3">
                    <label for="fnac" class="form-label">Fecha de nacimiento</label>
                    <input type="date" class="form-control" name="fnac" id="fnac"  >
                </div>
                
                <div class="mb-3">
                    <label for="email" class="form-label">e-mail</label>
                    <input type="email" class="form-control" name="email" id="email" >
                </div>
                
                <div class="mb-3">
                    <label for="telefono" class="form-label">Telefono</label>
                    <input type="tel" class="form-control" name="telefono" id="telefono" >
                </div>
                
                <button type="button" class="btn btn-success">Agregar</button>
                
                <button type="button" class="btn btn-primary">Volver</button>
                
                
            </form>
            
            
            
            
        </div>
        
    </body>
</html>
