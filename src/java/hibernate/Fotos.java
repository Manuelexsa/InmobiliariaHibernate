package hibernate;
// Generated 23-feb-2015 14:14:15 by Hibernate Tools 4.3.1



/**
 * Fotos generated by hbm2java
 */
public class Fotos  implements java.io.Serializable {


     private Integer id;
     private Inmueble inmueble;
     private String ruta;

    public Fotos() {
    }

    public Fotos(Inmueble inmueble, String ruta) {
       this.inmueble = inmueble;
       this.ruta = ruta;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Inmueble getInmueble() {
        return this.inmueble;
    }
    
    public void setInmueble(Inmueble inmueble) {
        this.inmueble = inmueble;
    }
    public String getRuta() {
        return this.ruta;
    }
    
    public void setRuta(String ruta) {
        this.ruta = ruta;
    }




}

