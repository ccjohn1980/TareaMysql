package ejerciciosmysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class EjerciciosMysql {
   
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/tienda?user=root&password=mysqladmin";
            Connection connection = DriverManager.getConnection(url);
            Statement statement = connection.createStatement();
            String sql = "SELECT * FROM producto";
            ResultSet resultSet = statement.executeQuery(sql);
            
            while (resultSet.next()){
                int idProd      = resultSet.getInt("id_producto");
                String descProd = resultSet.getString("desc_producto");
                int precio      = resultSet.getInt("precio");
                System.out.println("Id: " + idProd);
                System.out.println("Prod: " + descProd);
                System.out.println("Precio: " + precio);
                System.out.println("==========================");
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
        }
     }
   }
