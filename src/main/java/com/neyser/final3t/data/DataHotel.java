package com.neyser.final3t.data;

import com.neyser.final3t.model.HotelModel;

import java.util.ArrayList;

public class DataHotel {

    ArrayList<HotelModel> hoteles = new ArrayList<>();

    public ArrayList<HotelModel> cargarData(){
        hoteles.add(new HotelModel("h01","Hotel Ritz","5 estrellas", "600","images/hotel01_600x400.jpg"));
        hoteles.add(new HotelModel("h02","Hotel Palace","5 estrellas", "400","images/hotel02_600x400.jpg"));
        hoteles.add(new HotelModel("h03","Hotel Riu Plaza España" ,"4 estrellas", "150","images/hotel03_600x400.jpg"));

        return hoteles;
    }

}
