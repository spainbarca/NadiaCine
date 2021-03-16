<%-- 
    Document   : formulario
    Created on : 04-jun-2018, 11:12:11
    Author     : zenon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>Mi pagina Web</title>
    <style>
            
            @import "menu.css";
        </style>
    </head>
    


    
</head>
<body background="fregistrar.jpg">
<h1><center><font color="white" size="15">PELICULAS ONLINE</font></center></h1><br><br>

<ul id="m1">
            <li><a href="index.jsp">Inicio</a>
                
            </li>
            <li>Generos
                <ul class="m2">
                    <li><a href="">Accion</a></li>
                    <li><a href="">Drama</a></li>
                    <li><a href="">Comedia</a></li>
                    <li><a href="">Terror</a></li>
                </ul>
            </li>
            <li>Ventas
                <ul class="m2">
                    <li><a href="alquiler.jsp">Alquiler de salas</a></li>
                    <li><a href="consultareserva.jsp">Consulta de Reservas</a><li>
                </ul>
            </li>
            <li>Login/Resgistrarse
                <ul class="m2">
                    <li><a href="Login/iniciar.jsp">Iniciar sesion</a></li>
                    <li><a href="crearcuenta.jsp">Crear cuenta</a></li>
                    <li><a href="formulario.jsp">Registro Cinefilos(Datos Personales)</a></li>
                </ul>
            </li>
        </ul><br><br><br>
    <body>
    <h1  align="center"><font color=#05F9FC>Crea tu propia cuenta</h1>
   <center> <form action="SERVCinefilo" method="POST">
        <h3>
        DNI  : <input type="text" name="txtDni" <% if(request.getAttribute("dni")!=null){ %>   
                     value ='<%=request.getAttribute("dni") %>'
                  <% } %>> <br><br>
        Nombres  : <input type="text" name="txtNombres"   <% if(request.getAttribute("nombres")!=null){ %>   
                     value ='<%=request.getAttribute("nombres") %>'
                  <% } %>> <br><br>
        Apellidos : <input type="text" name="txtApellidos" <% if(request.getAttribute("apellidos")!=null){ %>   
                     value ='<%=request.getAttribute("apellidos") %>'
                  <% } %>> <br><br>
        Direccion : <textarea name="txtDireccion" rows=2 cols=30 <% if(request.getAttribute("direccion")!=null){ %>   
                     value ='<%=request.getAttribute("direccion") %>'
                  <% } %>> </textarea><br>
        Sexo : <br>
        <input type="radio" name="RadioSexo" <% if(request.getAttribute("sexo")!=null){ %>   
                     value ='<%=request.getAttribute("sexo") %>'
                  <% } %>><font> Masculino<br>
        <input type="radio" name="RadioSexo" <% if(request.getAttribute("sexo")!=null){ %>   
                     value ='<%=request.getAttribute("sexo") %>'
                  <% } %>>Femenino</font><br><br>
        Fecha de nacimiento: <input type="date" name="inputFecha" <% if(request.getAttribute("fecha")!=null){ %>   
                     value ='<%=request.getAttribute("fecha") %>'
                  <% } %>><br>
        Seleccione su ciudad :</h3>
        <select name="checkCiudad" >
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %> >Amazonas</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Arequipa</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Ayacucho</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Cajamarca</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Callao</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Ica</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>La Libertad</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Lima</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Piura</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Tacna</option>
        <option <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>>Tumbes</option>
    </select><br><br>
    <button type="submit" name="btnEnviar" style='width:100px; height:40px; color:red; background:yellow' >ENVIAR </button>
    </form>               
    </body>
</html>
