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

public class DAOConsultar implements Operaciones{
Database db=new Database();

    @Override
    public String insertar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String eliminar(Object obj) {
        Reserva r = (Reserva)obj;
       Connection conn;
       PreparedStatement pst;
       String sql= "delete from reserva where dni=?";
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
           int filas= pst.executeUpdate();
           respuesta="Se eliminaron "+filas+" elemento(s)";
          conn.close();
       }catch(ClassNotFoundException | SQLException e){
          
       }
       return respuesta;
    }

    @Override
    public String modificar(Object obj) {
        Reserva r = (Reserva)obj;
       Connection conn;
       PreparedStatement pst;
       String sql= "update reserva set tip_pago=?,categoria=?,pelicula=?,num_salas=?,actividades=?,ciudad=? where dni=?";
       String respuesta="";
       try{
           Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);           
           pst.setString(1,r.getTip_pago());
           pst.setString(2,r.getCategoria());
           pst.setString(3,r.getPelicula());
           pst.setFloat(4,r.getNum_salas());
           pst.setString(5,r.getActividades());
           pst.setString(6,r.getCiudad());
           pst.setInt(7,r.getDni());
           int filas= pst.executeUpdate();
           respuesta="Se modificaron "+filas+" elemento";
          conn.close();
       }catch(ClassNotFoundException | SQLException e){
          JOptionPane.showMessageDialog(null,"Error "+e );
       }
       return respuesta;
    }

    @Override
    public List<Reserva> consultar() {
        List<Reserva> datos = new ArrayList<>();
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select * from reserva";
        try{
            Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           rs=pst.executeQuery(sql);
           while(rs.next()){
               datos.add(new Reserva(rs.getInt("dni"),
                       rs.getString("tip_pago"),
                       rs.getString("categoria"),
                       rs.getString("pelicula"),
                       rs.getInt("num_salas"),
                       rs.getString("actividades"),
               rs.getString("ciudad")));
           }
        }catch(ClassNotFoundException | SQLException e){
            
        }
                return datos;
    }

    public List<Reserva> filtrar(String campo, String criterio) {
        List<Reserva> datos = new ArrayList<>();
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select * from reserva where "+campo+" like '%"+criterio+"%'";
        try{
            Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           rs=pst.executeQuery(sql);
           while(rs.next()){
               datos.add(new Reserva(rs.getInt("dni"),
                       rs.getString("tip_pago"),
                       rs.getString("categoria"),
                       rs.getString("pelicula"),
                       rs.getInt("num_salas"),
                       rs.getString("actividades"),
               rs.getString("ciudad")));
           }
        }catch(ClassNotFoundException | SQLException e){
            
        }
                return datos;
    }
    
    public String[] CargarCampos() {
        Connection conn;
        String[] columnas=null;
        PreparedStatement pst;        
        ResultSet rs;
        ResultSetMetaData rsm;
        String sql = "select * from reserva";
        try{
            Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           rs=pst.executeQuery(sql);
           rsm = rs.getMetaData();
           int numcol= rsm.getColumnCount();
           columnas= new String[numcol];
           for(int i=1;i<=numcol;i++){
               columnas[i-1]=rsm.getColumnName(i);
           }
        }catch(ClassNotFoundException | SQLException e){     }
       return columnas;
    }
    
     public List<Reserva> TraerRegistro(String dni) {
          List<Reserva> datos = new ArrayList<>();
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select * from reserva where dni  like '%"+dni+"%'";
        try{
            Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           rs=pst.executeQuery(sql);
           while(rs.next()){
               datos.add(new Reserva(rs.getInt("dni"),
                       rs.getString("tip_pago"),
                       rs.getString("categoria"),
                       rs.getString("pelicula"),
                       rs.getInt("num_salas"),
                       rs.getString("actividades"),
               rs.getString("ciudad")));
           }
        }catch(ClassNotFoundException | SQLException e){
            
        }
      return datos;
         
    }
    
}
