package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created with IntelliJ IDEA.
 * User: damiens
 * Date: 02/11/12
 * Time: 10:22
 * To change this template use File | Settings | File Templates.
 */
public class MySqlTest {

        static Statement statement = null;
        static Connection connection = null;
        static ResultSet resultSet = null;


        public static void main(String[] args){
            try {
                Class.forName("com.mysql.jdbc.Driver");

                connection = DriverManager.getConnection("jdbc:mysql://localhost/web_forum?"
                        + "user=root&password=13qe13");

                statement = connection.createStatement();

                resultSet = statement.executeQuery("select * from web_forum.User");

                while(resultSet.next()){
                    System.out.println(resultSet.getString("username"));
                }

            } catch (ClassNotFoundException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            } catch (SQLException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            } finally{
                try {
                    if (resultSet != null) {
                        resultSet.close();
                    }

                    if (statement != null) {
                        statement.close();
                    }

                    if (connection!= null) {
                        connection.close();
                    }
                } catch (Exception e) {
                    System.err.println("Error when finally closing the db connection");
                    e.printStackTrace();
                }

            }
        }


}
