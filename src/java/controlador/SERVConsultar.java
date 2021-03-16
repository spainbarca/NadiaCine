
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelado.DAOConsultar;
import uml.Reserva;

/**
 *
 * @author zenon
 */
public class SERVConsultar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            DAOConsultar dao=new DAOConsultar();
            Reserva r = new Reserva();
            Reserva p2=new Reserva();
            String campo,criterio,id;
            List<Reserva> datos = new ArrayList<>();
            String respuesta="";
            RequestDispatcher rd=null;
            
            try{
                if(request.getParameter("btnModificar")!=null){
                    r.setDni(Integer.parseInt(request.getParameter("txtDni")));
                    r.setTip_pago(request.getParameter("txtTip_pago"));
                    r.setCategoria(request.getParameter("txtCategoria"));
                    r.setPelicula(request.getParameter("txtPelicula"));
                    r.setNum_salas(Integer.parseInt(request.getParameter("txtNum_salas")));
                    r.setActividades(request.getParameter("txtActividades"));
                    r.setCiudad(request.getParameter("txtCiudad"));
                    respuesta=dao.modificar(r);                    
                    request.setAttribute("respuesta",respuesta);                   
                }else if(request.getParameter("btnEliminar")!=null){
                    r.setDni(Integer.parseInt(request.getParameter("txtDni")));                    
                    respuesta=dao.eliminar(r);                    
                    request.setAttribute("respuesta",respuesta);                   
                }
                else if(request.getParameter("btnFiltrar")!=null){
                    //campo=request.getParameter("txtCampo");
                    campo=request.getParameter("sltColumnas");               
                    criterio=request.getParameter("txtCriterio");
                    datos = dao.filtrar(campo, criterio);
                    request.setAttribute("filtro",datos);                   
                }
                else if(request.getParameter("btnReiniciar")!=null){
                    datos = dao.consultar();
                    request.setAttribute("filtro",datos);                   
                }else if(request.getParameter("dni")!=null){                   
                    id=request.getParameter("dni");              
                    datos = dao.TraerRegistro(id);
                    request.setAttribute("dni",datos.get(0).getDni());
                    request.setAttribute("tip_pago",datos.get(0).getTip_pago());
                    request.setAttribute("categoria",datos.get(0).getCategoria());
                    request.setAttribute("pelicula",datos.get(0).getPelicula());
                    request.setAttribute("num_salas",datos.get(0).getNum_salas());
                    request.setAttribute("actividades",datos.get(0).getActividades());
                    request.setAttribute("ciudad",datos.get(0).getCiudad());
                }else if(request.getParameter("idel")!=null){
                    r.setDni(Integer.parseInt(request.getParameter("txtDni")));                    
                    respuesta=dao.eliminar(r);                    
                    request.setAttribute("respuesta",respuesta);                   
                }
                
               rd = request.getRequestDispatcher("consultareserva.jsp");
            }catch(Exception e){
                
            }
            
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
