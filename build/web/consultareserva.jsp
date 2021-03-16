<%@ page import="modelado.DAOConsultar" %>
<%@ page import="java.util.*" %>
<%@ page import="uml.Reserva" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Mi pagina Web</title>
	<style>
            
            @import "estilos.css";
        </style>
    </head>

</head>
<style type="text/css">
<!--
body {
    width:100%;
    height: 100%;
background-attachment: fixed;
background-image: url(consulta.png);
background-repeat: no-repeat;
-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover; 
}
-->
</style>

<%
      DAOConsultar dao=new DAOConsultar();
      List<Reserva> datos = new ArrayList();
      String[] columnas =  dao.CargarCampos();
    %>

    <h1><center><font color="white" size="15">PELICULAS ONLINE</font></center></h1><br>
    <font color="white" size="15"><a href="index.jsp">Regresar</a></font><br>

        
        <form name="formReserva" method="POST" action="SERVConsultar">
      <table style="width:400px">
            <thead>
                <tr><th colspan="3"> Consulta de Reservas</th></tr>
            </thead>  
            <tbody>
                <tr><td>DNI </td> <td><input type="text" name="txtDni" 
                   <% if(request.getAttribute("dni")!=null){ %>   
                     value ='<%=request.getAttribute("dni") %>'
                  <% } %>  </td> </tr>        
                <tr><td>Tipo de pago </td> <td><input type="text" name="txtTip_pago"
                <% if(request.getAttribute("tip_pago")!=null){ %>   
                     value ='<%=request.getAttribute("tip_pago") %>'
                  <% }                     
                   %> ></td> </tr>                                                 
                
                <tr><td>Categoria </td> <td><input type="text" name="txtCategoria" 
                  <% if(request.getAttribute("categoria")!=null){ %>   
                     value ='<%=request.getAttribute("categoria") %>'
                  <% }                     
                   %>></td> </tr> 
                <tr><td>Pelicula </td><td><input type="text" name="txtPelicula"
                  <% if(request.getAttribute("pelicula")!=null){ %>   
                     value ='<%=request.getAttribute("pelicula") %>'
                  <% }                     
                   %> ></td> </tr> 
                
                <tr><td># Salas</td> <td><input type="text" name="txtNum_salas" 
                   <% if(request.getAttribute("num_salas")!=null){ %>   
                     value ='<%=request.getAttribute("num_salas") %>'
                  <% } %>  </td> </tr>   
                
                <tr><td>Actividades </td> <td><input type="text" name="txtActividades" 
                   <% if(request.getAttribute("actividades")!=null){ %>   
                     value ='<%=request.getAttribute("actividades") %>'
                  <% } %>  </td> </tr>   
                
                <tr><td>Ciudad </td> <td><input type="text" name="txtCiudad" 
                   <% if(request.getAttribute("ciudad")!=null){ %>   
                     value ='<%=request.getAttribute("ciudad") %>'
                  <% } %>  </td> </tr>   
                 

            </tbody>
            <tfoot>
                <tr> <td colspan="3">      
               <input type="submit" name="btnModificar" value="Modificar">
                <input type="submit" name="btnEliminar" value="Eliminar">
                <input type="reset" name="btnLimpiar" value="Limpiar"> 
                </td>              
                </tr> 
            </tfoot>
      </table> 
        <% if(request.getAttribute("respuesta")!=null){ %>   
        <center><font COLOR="red"><%= request.getAttribute("respuesta") %></font> </center>          
                  <% } %>                   
      <hr> Buscar : <input type="text" name="txtCriterio" width="150">
           En base a:      
           <select name="sltColumnas">
           <% 
           for(int i=0 ; i<columnas.length ; i++){
           %>
           <option value="<%= columnas[i] %>"><%= columnas[i] %></option> 
           <%     
           }
           %> 
           </select>      
      <input type="submit" name="btnFiltrar" value="Filtrar"> 
      <input type="submit" name="btnReiniciar" value="Reinicio"> 
 </form> 
           
           <hr>
    <center>
        <table style="width:550px"> 
            <thead><tr> <th>DNI</th> <th>TIPO PAGO</th><th>CATEGORIA</th> <th>PELICULA</th><th># SALAS</th><th>ACTIVIDADES</th><th>CIUDAD</th><th>ACCIONES</th></tr> </thead>
      <%
      if(request.getAttribute("filtro")!=null){
          datos=(List<Reserva>) request.getAttribute("filtro");
      }else if(request.getAttribute("reinicio")!=null){
        datos=dao.consultar();       
      }else{
        datos=dao.consultar();       
      }
        
      for(Reserva r:datos){
       %>
      <tbody>
      <tr>
          <td> <center><%= r.getDni()%></center>  </td>
          <td> <%= r.getTip_pago()%>  </td>
          <td> <%= r.getCategoria()%>  </td>
          <td> <%= r.getPelicula()%>  </td>
          <td> <%= r.getNum_salas()%>  </td>
          <td> <%= r.getActividades()%>  </td>
          <td> <%= r.getCiudad() %>  </td>
          <td> <center><a href='SERVConsultar?dni=<%=r.getDni()%>'> <img src="veeeer1.png" border="0" width="25" height="25"></a>
              <a href='SERVConsultar?idel=<%=r.getDni()%>'><img src="eliminar.png" border="0" width="25" height="25"> </a></center> </td> 
      </tr>
      </tbody>
       <%
         }
       %>    
        </table>
            
    </center>
      
</body>
</html>

