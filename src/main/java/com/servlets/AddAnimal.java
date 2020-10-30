package com.servlets;

import com.beans.Cat;
import com.connexion.Connexion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddAnimal")
public class AddAnimal extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connexion c = new Connexion();
        c.getConnexion();
        Cat cat = new Cat(request.getParameter ("catName"), request.getParameter ("ageCat"));
        cat.setNom(request.getParameter ("catName"));
        cat.setAge(request.getParameter ("ageCat"));
        c.addCat(cat);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/formAnimal.jsp").forward(request, response);
    }
}
