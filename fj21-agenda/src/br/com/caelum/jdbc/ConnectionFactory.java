package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() {
		try {
			// Carrega o driver especificado
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Driver não encontrado!" + e);
		}
		
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost/fj21",
					"root", "");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
