package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/**
 *
 * @author Administrator
 */
public class ComponentListBean {
    private Collection comList;
    private String url=null;
    
    public ComponentListBean(String _url) throws Exception{
        url = _url;
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        comList = new ArrayList();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url);
            
            stmt = conn.createStatement();
            String sql = "select * from component";
            rs = stmt.executeQuery(sql);
            
            Object newItem[] = null;
            while(rs.next()){
                newItem = new Object[4];
                newItem[0] = (Integer)rs.getInt("idcomponent");
                newItem[1] = (String)rs.getString("name");
                newItem[2] = (Integer)rs.getInt("stock");
                newItem[3] = (Integer)rs.getInt("price");
                comList.add(newItem);
            }
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
    public Collection getComponentList() {
        return comList;
    }
}