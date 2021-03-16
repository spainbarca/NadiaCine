
package uml;

public class Reserva {
    int dni;
    String tip_pago;
    String categoria;
    String pelicula;
    int num_salas;
    String actividades;
    String ciudad;

     public Reserva(){
    
    }

    public Reserva(int dni, String tip_pago, String categoria, String pelicula, int num_salas, String actividades, String ciudad) {
        this.dni = dni;
        this.tip_pago = tip_pago;
        this.categoria = categoria;
        this.pelicula = pelicula;
        this.num_salas = num_salas;
        this.actividades = actividades;
        this.ciudad = ciudad;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getTip_pago() {
        return tip_pago;
    }

    public void setTip_pago(String tip_pago) {
        this.tip_pago = tip_pago;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getPelicula() {
        return pelicula;
    }

    public void setPelicula(String pelicula) {
        this.pelicula = pelicula;
    }

    public int getNum_salas() {
        return num_salas;
    }

    public void setNum_salas(int num_salas) {
        this.num_salas = num_salas;
    }

    public String getActividades() {
        return actividades;
    }

    public void setActividades(String actividades) {
        this.actividades = actividades;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    
    
}
