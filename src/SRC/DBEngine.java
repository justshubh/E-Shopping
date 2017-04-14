package SRC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

/**
*
* @author cgg
*/
public class DBEngine
{
/**
* Connect to database
* @return Connection to database
* @throws java.lang.Exception
*/


/**
* This method will load vector of vector of string and load all the data in
* the vector
* @return vector of vector of string
* @throws java.lang.Exception
*/
public Vector getEmployee()throws Exception
{
Vector<Vector<String>> employeeVector = new Vector<Vector<String>>();

     Class.forName("java.sql.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fastfood", "root", "root");
     String sql = "create table student " +
             "(studentID varchar(30),"+
             "name varchar(30)," +
             "address varchar(100)," +
             "m_no varchar(15)," +
             "result varchar(50))";
     PreparedStatement pre = con.prepareStatement(sql);

     ResultSet rs = pre.executeQuery();

while(rs.next())
{
Vector<String> employee = new Vector<String>();
employee.add(rs.getString(1)); //Empid
employee.add(rs.getString(2)); //name
employee.add(rs.getString(3)); //position
//employee.add(rs.getString(4)); //department
employeeVector.add(employee);
}

/*Close the connection after use (MUST)*/

return employeeVector;
}
}
