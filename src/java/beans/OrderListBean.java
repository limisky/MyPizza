package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class OrderListBean {
    private String url;
    
    private Collection orders;
    
    public OrderListBean(String _url){
        orders = new ArrayList();
        url=_url;
    }
    public Collection getOrders(){
        return orders;
    }
    public String getProducts(int id) throws Exception{
        String products = "";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url);
            
            stmt = conn.createStatement();
            String sql = "select * from `order_product`,`product` \n" +
                         "where order_product.idproduct = product.idproduct\n" +
                         "and idorder='"+id+"';";
            rs = stmt.executeQuery(sql);
            
            while(rs.next()){
               products += "<img src='"+rs.getString("pic_url")+"' height=100px width=50px/>";
               products += "*"+rs.getString("quantity");
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
        return products;
    }
    public void getOrderListByUsername(String username) throws Exception{
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url);
            
            stmt = conn.createStatement();
            String sql = "select * from `order` where user_name='"+username+"'";
            rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                Object order[] = new Object[3];
                order[0] = new String();
                order[1] = new String();
                order[2] = new String();
                
                order[0]+=rs.getString("ordertime");
                order[0]+="     Total:"+rs.getString("total")+" Kr";
                order[1]+=rs.getString("street_address")+","+rs.getString("city")+","+rs.getString("country")+","+rs.getString("zip_code");
                
                order[2] = getProducts(rs.getInt("idorder"));
                //order[2] = "<img src='img/background.jpg'/>";
                
                orders.add(order);
            }
            Collections.reverse((List<?>) orders);
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
