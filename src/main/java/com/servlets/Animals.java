package com.servlets;

import com.connexion.Connexion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "Animals")
public class Animals extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connexion c = new Connexion();
        c.getConnexion();
        ArrayList<String> nom = new ArrayList<String>();
        try {
            nom = c.getCats();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        request.setAttribute("nom", nom);
        this.getServletContext().getRequestDispatcher("/WEB-INF/animals.jsp").forward(request, response);
    }
}
