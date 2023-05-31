package com.neyser.final3t.controllers;

import java.io.*;

import com.neyser.final3t.model.HotelModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "DetalleController", value = "/DetalleController")
public class DetalleController extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        String tipo = request.getParameter("hotel");

        HotelModel hotel01 = new HotelModel();
        hotel01.cargarData();
        System.out.println("Cargar Data "+hotel01.cargarData());

        String resultado = hotel01.buscarHotel(hotel01.cargarData(), tipo);
        System.out.println(resultado);

        response.getWriter().write(resultado);
         */


        HotelModel hotel01 = new HotelModel("h03","Hotel Riu Plaza España" ,"4 estrellas", "150","images/hotel03_600x400.jpg");
        // Mediente request enviar con el "parametro1" el mensaje "Texto desde Empleados1Controller"
        request.setAttribute("argumento1", "Texto desde Empleados1Controller");

        // Mediante el objeto "sesion1" crear una sesión y...
        HttpSession sesion1 = request.getSession();
        // ...agregar el parámetro "empleado1" que contiene el objeto "emp1"
        sesion1.setAttribute("empleado1", hotel01);

        // 4.-Redireccionar a la vista deseada
        // Indicar la vista y...
        RequestDispatcher rd = request.getRequestDispatcher("views/detalle.jsp");
        // ...propagar los objetos request y response
        rd.forward(request, response);




    }

    public void destroy() {
    }
}