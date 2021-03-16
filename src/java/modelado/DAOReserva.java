/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelado;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import uml.Reserva;

public class DAOReserva implements Operaciones{
Database db=new Database();
    @Override
    public String insertar(Object obj) {
        Reserva r = (Reserva)obj;
       Connection conn;
       PreparedStatement pst;
       String sql= "Insert into reserva values(?,?,?,?,?,?,?)";
       String respuesta="";
       try{
           Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           pst.setInt(1,r.getDni());
           pst.setString(2,r.getTip_pago());
           pst.setString(3,r.getCategoria());
           pst.setString(4,r.getPelicula());
           pst.setInt(5,r.getNum_salas());
           pst.setString(6,r.getActividades());
           pst.setString(7,r.getCiudad());
           int filas= pst.executeUpdate();
           respuesta="Se registraron "+filas+" nuevo elemento";
          conn.close();
       }catch(ClassNotFoundException | SQLException e){
          JOptionPane.showMessageDialog(null,"Error "+e );
       }
       return respuesta;
    }

    @Override
    public String eliminar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String modificar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> consultar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> filtrar(String campo, String criterio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
