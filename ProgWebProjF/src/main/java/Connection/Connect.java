/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.SQLException;
import org.apache.commons.dbcp.BasicDataSource;
/**
 *
 * @author diego
 */
public class Connect {
  private static final BasicDataSource dataSource = new BasicDataSource();

    // Inicializamos la conexion
    static {
        String serverName = "localhost:3306";
        String dbName = "5taProgWeb";
        String url = "jdbc:mysql://" + serverName + "/" + dbName + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        // Tipo de Driver, este es el de mysql
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        // La URL a la conexion, especificando que es de mysql
        // la ruta que es localhost puerto 3306
        // el nombre de la base de datos que es pwDB
        // lo demas son parametros para que no tengan problemas con zonas horarias
        dataSource.setUrl(url);
        // El nombre de usuario de su conexion
        dataSource.setUsername("root");
        // La contraseña del usuario de su conexion
        dataSource.setPassword("root");
        // dataSource.setMaxIdle(0);
        // dataSource.setMaxActive(100);
    }
    
    

    /**
     * *
     * Metodo para obtener la conexion
     *
     * @return Conexion a Base de datos
     * @throws SQLException
     */
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    /**
     * Metodo para cerrar la conexion
     *
     * @throws SQLException
     */
    public static void closeConnection() throws SQLException {
        dataSource.close();
    }
}
