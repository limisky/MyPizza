package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Administrator
 */
public class ComponentBean {
    private String url;
    private Integer id;
    private Integer stock;
    public ComponentBean(String _url,Integer _id){
        url=_url;
        id=_id;
    }
    public void orderCom(Integer num) throws SQLException{
        stock = 0;
        Connection con = null;
        try{    
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            con.setAutoCommit(false);
            String querySQL = "SELECT stock from `component` where "
                    + "idcomponent ='"+id+"'";
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery(querySQL);
            
            rs.next();
            stock = rs.getInt("stock");
            stock += num; 
            
            String sql = "UPDATE `component` SET `stock`='"+ stock
                    + "' WHERE `idcomponent`='"+id+"';";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.execute();
            con.commit(); 
        }
        catch(Exception e){
            con.rollback();
        }
    }
    
}
