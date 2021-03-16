<%-- 
    Document   : iniciar
    Created on : 04-jun-2018, 11:39:33
    Author     : zenon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  
	<title>Mi pagina Web</title>
	<style>
            
            @import "menu.css";
        </style>
    </head>
    


	
</head>
<body background="mariposa.png">
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
                    <li><a href="iniciar.jsp">Iniciar sesion</a></li>
                    <li><a href="crearcuenta.jsp">Crear cuenta</a></li>
                    <li><a href="formulario.jsp">Registro Cinefilos(Datos Personales)</a></li>
                </ul>
            </li>
        </ul><br><br><br>

        
        <form name="frmregister" action="SERVPersona" method="post">
            <center><div><h1><font color="white">LOGEAR USUARIO</h1>
           <div class="form-group">
  <label class="col-md-4 control-label">Usuario</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="txtId" placeholder="Digite su usuario" class="form-control"  type="text" <% if(request.getAttribute("id")!=null){ %>   
                     value ='<%=request.getAttribute("id") %>'
                  <% } %> >
    </div>
  </div>
</div>
                    <div class="form-group">
  <label class="col-md-4 control-label">Contraseña</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="txtContra" placeholder="Digite su contraseña" class="form-control"  type="password" <% if(request.getAttribute("contra")!=null){ %>   
                     value ='<%=request.getAttribute("contra") %>'
                  <% } %> >
    </div>
  </div>

                    <br><br>
    <button type="submit" name="btnLogear" style='width:150px; height:40px' >LOGEAR </button>                
    
    </form>


    </body></body></html>
