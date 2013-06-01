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
public class PizzaListBean {
    private Collection pizzaList;
    private String url=null;
    
    public PizzaListBean(String _url) throws Exception{
        url = _url;
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        pizzaList = new ArrayList();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url);
            
            stmt = conn.createStatement();
            String sql = "select * from product";
            rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                PizzaBean pb = new PizzaBean();
                pb.setId(rs.getInt("idproduct"));
                pb.setName(rs.getString("name"));
                pb.setPrice(rs.getDouble("price"));
                pb.setDescription(rs.getString("description"));
                pb.setPic_url(rs.getString("pic_url"));
                pb.setSales(rs.getInt("sales"));
                pizzaList.add(pb);
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
    public Collection getProductList() {
        return pizzaList;
    }
    public PizzaBean getById(int id) {
	PizzaBean pb = null;
	Iterator iter =pizzaList.iterator();
        
	while(iter.hasNext()){
	    pb=(PizzaBean)iter.next();
	    if(pb.getId()== id){
                return pb;
	    }
	}
	return null;
    }
}
