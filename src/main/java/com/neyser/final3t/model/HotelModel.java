package com.neyser.final3t.model;

import com.neyser.final3t.data.DataHotel;

import java.util.ArrayList;
import java.util.Collections;

public class HotelModel {
    private String id;
    private String nombre;
    private String categoria;
    private String precio;
    private String ruta;

    public HotelModel() {
    }

    public HotelModel(String id, String nombre, String categoria, String precio, String ruta) {
        this.nombre = nombre;
        this.id = id;
        this.categoria = categoria;
        this.precio = precio;
        this.ruta = ruta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRuta() {
        return ruta;
    }

    public void setRuta(String ruta) {
        this.ruta = ruta;
    }

    public ArrayList<HotelModel> cargarData(){
        DataHotel dataAnimal = new DataHotel();
        ArrayList<HotelModel> a = dataAnimal.cargarData();
        return a;
    }

    public String buscarHotel(ArrayList<HotelModel> anim, String tipo){
        //System.out.println("Prueba 1");

        Collections.shuffle(anim);

        ArrayList<HotelModel> hotelFinal = new ArrayList<>();

        for (HotelModel x : anim) {
            if(x.getId().equalsIgnoreCase(tipo)){
                System.out.println("Ruta: "+ x.getNombre());
                hotelFinal.add(x);
                //break;
            }
        }

        // Crear variable para poder ingresar el HTML equivalente al resultado de la busqueda
        String resultado1 = "";

        // Dibujar div
        for (HotelModel a: hotelFinal) {

            String resultado ="";
            resultado+="<div class=\"containter text-center text-light\">";
            resultado+="<h1>"+a.getNombre().toUpperCase()+"</h1>";
            resultado+="<img src=\""+a.getRuta()+"\" >";
            resultado+="<h3>"+a.getCategoria().toUpperCase()+"</h3>";
            resultado+="<h3>"+a.getPrecio().toUpperCase()+"</h3>";
            resultado+="</div>";

            resultado1 +=resultado;
        }

        // Enviar DATA
        return resultado1;
    }

}
