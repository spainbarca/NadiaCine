
package modelado;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import uml.Cinefilo;
import java.util.Date;

public class DAOCinefilo implements Operaciones{
Database db= new Database();

    @Override
    public String insertar(Object obj) {
        Cinefilo c = (Cinefilo)obj;
       Connection conn;
       PreparedStatement pst;
       String sql= "Insert into cinefilos values(?,?,?,?,?,?,?)";
       String respuesta="";
       try{
           Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           pst.setInt(1,c.getDni());
           pst.setString(2,c.getNombres());
           pst.setString(3,c.getApellidos());
           pst.setString(4,c.getDireccion());
           pst.setString(5,c.getSexo());
           pst.setString(6,c.getFecha());
           pst.setString(7,c.getCiudad());
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
