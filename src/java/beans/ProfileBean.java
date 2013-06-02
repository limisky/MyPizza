package beans;

import java.util.*;
import java.sql.*;
public class ProfileBean {
    
    // create a profile bean

    private String url = null;
    private String user;
    private String password;
    private String name;
    private String street;
    private String zip;
    private String city;
    private String country;
    
    public void update(String username) throws Exception{
        Connection con = null;
        try{    
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            con.setAutoCommit(false);
            
            String sql = "UPDATE `users` SET `name`='"+name+"' ,"
                    + "`street_address`='"+street + "' ,"
                    + "`zip_code`='"+zip + "' ,"
                    + "`city`='"+city + "' ,"
                    + "`country`='"+country
                    + "' WHERE `user_name`='"+username+"';";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.execute();
            con.commit(); 
        }
        catch(Exception e){
            con.rollback();
        }
    }

    public ProfileBean(String _url) {
        url=_url;
    }
    public String getUser() {
	return user;
    }
    public void setUser(String _user) {
        user = _user;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String _pass) {
        password = _pass;
    }
    public String getName() {
        return name;
    }
    public void setName(String _name) {
        name = _name;
    }
    public String getStreet() {
        return street;
    }
    public void setStreet(String _street) {
        street = _street;
    }
    public String getZip() {
        return zip;
    }
    public void setZip(String _zip) {
         zip = _zip;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String _city) {
        city = _city;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String _country) {
        country =  _country;
    }

    // populate a profile instance from the database
    public void populate(String u)  throws Exception{
        Connection conn =null;
        Statement stmt = null;
        ResultSet rs=null;
        try{            
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url);  
            stmt = conn.createStatement();
            String sql;
            sql ="SELECT * from  USERS where USER_NAME = " +
                                             "'" + u + "'";
            rs= stmt.executeQuery(sql);

	    // analyze the result set
	    
	    rs.next();
            user= u;
            password = rs.getString("USER_PASS");
            name = rs.getString("NAME");
            street = rs.getString("STREET_ADDRESS");
            zip = rs.getString("ZIP_CODE");
            city = rs.getString("CITY");
	    country = rs.getString("COUNTRY");
	}   
	catch(SQLException sqle){
            throw new Exception(sqle);
	}
        finally{
 	    try{
		rs.close();
            }
            catch(Exception e) {}
            try{
		stmt.close();
            }
	    catch(Exception e) {}
            try {
		conn.close();
            }
            catch(Exception e){}
        }
    }
}

