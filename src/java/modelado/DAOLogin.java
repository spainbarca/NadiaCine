/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelado;

import java.util.*;
import java.sql.*;

public class DAOLogin {
    Database db = new Database();
   
    public boolean autenticacion(String id, String contra){
       Connection conn;
       PreparedStatement pst;
       
       ResultSet rs;
       try{
        String sql= "select * from usuarios where id=? and contra=?";
           Class.forName(db.getDriver());
           conn = DriverManager.getConnection(
               db.getUrl(),
               db.getUsuario(),
               db.getContraseña()
           );
           pst=conn.prepareStatement(sql);
           pst.setString(1,id);
           pst.setString(2,contra);
           rs=pst.executeQuery();
           
           if(rs.absolute(1)){
               return true;
           }
           
           conn.close();
       }catch(Exception e){
           System.err.println("Error"+e);
       }
        return false;
    }
}
