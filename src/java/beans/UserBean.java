package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserBean {
    private Connection con;
    private String addUserSQL;
    private String addUserRoleSQL;
    private PreparedStatement addUserPstmt;
    private PreparedStatement addUserRolePstmt;
        
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
        addUserRoleSQL = "INSERT INTO user_roles(user_name,role_name)";
        addUserRoleSQL +=" VALUES(?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(jdbcURL);
            con.setAutoCommit(false);  
            addUserPstmt = con.prepareStatement(addUserSQL);
            addUserPstmt.setString(1,username);
            addUserPstmt.setString(2,password);
            addUserPstmt.execute();
            
            addUserRolePstmt=con.prepareStatement(addUserRoleSQL);
            addUserRolePstmt.setString(1,username);
            addUserRolePstmt.setString(2,"customer");
            addUserRolePstmt.execute();
                    
            con.commit(); 
            
        }
        catch(Exception e){
            con.rollback();
        }      
    }
}
