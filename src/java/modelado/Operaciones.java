/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelado;

import java.util.List;


public interface Operaciones {
  public String insertar(Object obj);
  public String eliminar(Object obj);
  public String modificar(Object obj);
  public List<?> consultar();
  public List<?> filtrar(String campo,String criterio);
    
}

