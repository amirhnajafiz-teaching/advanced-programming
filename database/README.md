# Database and SQL.

A database is information that is set up for easy access, management and updating.
Computer databases typically store aggregations of data records or files that contain information,
such as sales transactions, customer data, financials and product information.

Just like any other app, database is also an application. You have to use a special way to
make requests to your database, called ```query```.

A simple query is like this:

```mysql
select name from users where id=100;
```

The above example returns the user name that has id of 100.

## Example (Java)

In this example we are using MySQL as the database. So we need to know following informations for the MySQL database:

1. Driver class: The driver class for the mysql database is com.mysql.jdbc.Driver.
2. Connection URL: The connection URL for the mysql database is jdbc:mysql://localhost:3306/sonoo where jdbc is the API, 
mysql is the database, localhost is the server name on which mysql is running, we may also use IP address,
3306 is the port number and sonoo is the database name. We may use any database, in such case,
we need to replace the sonoo with our database name.
3. Username: The default username for the mysql database is root.
4. Password: It is the password given by the user at the time of installing the mysql database. In this example, we are going to use root as the password.

```java
import java.sql.*;

class MysqlCon{  
  public static void main(String args[]){  
    try{  
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection con=DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/sonoo","root","root");
      //here sonoo is database name, root is username and password
      
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from emp");  
      while(rs.next()) 
        System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
        
      con.close();  
    } catch(Exception e){ System.out.println(e); }  
  }  
}  
```

## Resources

- [Java MySQL](https://www.javatpoint.com/example-to-connect-to-the-mysql-database)
- [Java Database](https://www.geeksforgeeks.org/java-database-connectivity-with-mysql/)
- [MySQL](https://dev.mysql.com/downloads/connector/j/)
