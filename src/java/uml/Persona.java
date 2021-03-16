
package uml;

public class Persona {
  String id;
  String contra;
  String nombres;
  String apellidos;
  
    public Persona() {
    }

    public Persona(String id, String contra, String nombres, String apellidos) {
        this.id = id;
        this.contra = contra;
        this.nombres = nombres;
        this.apellidos = apellidos;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }  
}