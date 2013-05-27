package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserBean {
    private Connection con;
    private String addUserSQL;
    private PreparedStatement addUserPstmt;
        
    private String jdbcURL;
    private String username;
    private String password;
    
    public UserBean(String _jdbcURL,String _username, String _password){
        jdbcURL = _jdbcURL;
        username = _username;
        password = _password;
    }
    public void addUser() throws Exception{
        addUserSQL = "INSERT INTO users(user_name, user_pass)";
        addUserSQL += " VALUES(?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(jdbcURL);
            con.setAutoCommit(false);  
            addUserPstmt = con.prepareStatement(addUserSQL);
            addUserPstmt.setString(1,username);
            addUserPstmt.setString(2,password);
            
            addUserPstmt.execute();
            con.commit(); 
        }
        catch(Exception e){
            con.rollback();
        }      
    }
}
