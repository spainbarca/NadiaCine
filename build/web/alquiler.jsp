<%-- 
    Document   : alquiler
    Created on : 04-jun-2018, 12:19:29
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
    
    <h1  align="center"><font color=#05F9FC>Reserve su sala</h1>
   <center> <form name=frm action="SERVReserva" method="post">
        
          <h3>DNI  : <input type="text" name="txtDni" <% if(request.getAttribute("dni")!=null){ %>   
                     value ='<%=request.getAttribute("dni") %>'
                  <% } %> > <br><br></h3> 
           <h3>Tipo de pago  : <input type="text" name="txtTip_pago" <% if(request.getAttribute("tip_pago")!=null){ %>   
                     value ='<%=request.getAttribute("tip_pago") %>'
                  <% } %> > <br><br></h3>
        
        Seleccione Categoria :
        <select name="checkCategoria" >
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Accion</option>
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Animacion</option>
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Ciencia-Ficcion</option>
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Drama</option>
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Musical</option>
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Romance</option>
        <option <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% } %> >Terror</option>
        
    </select><br><br>
    
        Pelicula de preferencia : <input type="text" name="txtPelicula" <% if(request.getAttribute("pelicula")!=null){ %>   
                     value ='<%=request.getAttribute("pelicula") %>'
                  <% } %> > <br><br>
        Numero de salas : <textarea name="txtNum_salas" rows=2 cols=30 <% if(request.getAttribute("num_salas")!=null){ %>   
                     value ='<%=request.getAttribute("num_salas") %>'
                  <% } %> > </textarea><br><br>
        Actividades adicionales : <input type="text" name="txtActividades" <% if(request.getAttribute("actividades")!=null){ %>   
                     value ='<%=request.getAttribute("actividades") %>'
                  <% } %> > <br><br><br>
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
    <button type="submit" name="btnEnviar" style='width:70px; height:25px' >ENVIAR </button>
    </form>               
    </body>
</html>

