package com.connexion;

import com.beans.Cat;

import java.util.ArrayList;
import java.sql.*;

public class Connexion {
    Connection connexion = null;
    Statement statement = null;
    ResultSet resultat = null;
    public void getConnexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/animals?serverTimezone=UTC", "root", "root");
            statement = connexion.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<String> getCats() throws SQLException, SQLException {
        resultat = statement.executeQuery("SELECT nom FROM cats");
        ArrayList<String> nom = new ArrayList<String>();
        while (resultat.next()) {
            nom.add(resultat.getString("nom"));
        }
        return nom;
    }

    public void addCat(Cat cat) {
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO noms(nom, age) VALUES(?, ?)");
            preparedStatement.setString(1, cat.getNom());
            preparedStatement.setString(2, cat.getAge());
            preparedStatement.executeUpdate();
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }
}
