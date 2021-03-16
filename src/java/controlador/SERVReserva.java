/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

import modelado.DAOReserva;
import uml.Reserva;
public class SERVReserva extends HttpServlet {

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
            DAOReserva dao=new DAOReserva();
            Reserva r = new Reserva();
            //Persona p2=new Persona();
            String campo,criterio,id;
            List<Reserva> datos = new ArrayList<>();
            String respuesta="";
            RequestDispatcher rd=null;
            
            try{
                if(request.getParameter("btnEnviar")!=null){
                    r.setDni(Integer.parseInt(request.getParameter("txtDni")));
                    r.setTip_pago(request.getParameter("txtTip_pago"));
                    r.setCategoria(request.getParameter("checkCategoria"));
                    r.setPelicula(request.getParameter("txtPelicula"));
                    r.setNum_salas(Integer.parseInt(request.getParameter("txtNum_salas")));
                    r.setActividades(request.getParameter("txtActividades"));
                    r.setCiudad(request.getParameter("checkCiudad"));
                    respuesta=dao.insertar(r);                    
                    request.setAttribute("respuesta",respuesta);                    
                
                } 
                
               rd = request.getRequestDispatcher("index.jsp");
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
