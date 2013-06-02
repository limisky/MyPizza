package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/**
 *
 * @author Administrator
 */
public class CartBean {
    private Collection cart;
    private double total=0;
    
    public CartBean(){
        cart = new ArrayList();
    }
    public void removePizza(int id, int quantity,String url)throws Exception{
        Connection con = null;
        
        Iterator iter = cart.iterator();
        Object tmpArr[];
        while(iter.hasNext()){
            tmpArr = (Object[])iter.next();
            if(((PizzaBean)tmpArr[0]).getId()==id){
                Integer tmpAntal = (Integer)tmpArr[1];
                tmpArr[1] = new Integer(tmpAntal.intValue()-quantity);
                total -=(((PizzaBean)tmpArr[0]).getPrice())*quantity;
                if((Integer)tmpArr[1]==0)
                    cart.remove(tmpArr);
            }
        }
        try{    
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            con.setAutoCommit(false);
            
            String querySQL = "SELECT * from `product_component`,`component` where product_component.idcomponent=component.idcomponent"
                    + " and idproduct ='"+id+"'";
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery(querySQL);
            
            while(rs.next()){
                int newstock = rs.getInt("stock")+(rs.getInt("quantity")*quantity);
                String sql = "UPDATE `component` SET `stock`="+newstock+" WHERE `idcomponent`='"+rs.getInt("idcomponent")+"';";
                PreparedStatement pstmt = con.prepareStatement(sql);
                pstmt.execute();
                con.commit(); 
            }
        
        }
        catch(Exception e){
            con.rollback();
        }
    }
    public void addPizza(PizzaBean pb, int quantity){
        Object newItem[] = null;
        PizzaBean tempBean = null;
        total+=pb.getPrice()*quantity;
        //if the cart is empty just add the pizza
        if(cart.isEmpty()){
            newItem = new Object[2];
            newItem[0] = pb;
            newItem[1] = new Integer(quantity);
            cart.add(newItem);
        }
        //otherwise we need to check if this pizza already is in the cart
        else{
            Iterator iter = cart.iterator();
            Object tmpArr[];
            boolean found  =false;
            while(iter.hasNext()){
                tmpArr = (Object[])iter.next();
                //check if we found the pizza
                if(((PizzaBean)tmpArr[0]).getId()==pb.getId()){
                    Integer tmpAntal = (Integer)tmpArr[1];
                    tmpArr[1] = new Integer(tmpAntal.intValue()+quantity);
                    found = true;
                }
            }
            //if we didn't find it, add it
            if(!found){
                newItem = new Object[2];
                newItem[0] = pb;
                newItem[1] = new Integer(quantity);
                cart.add(newItem);
            }
        }
        
    }
    public Collection getCart(){
      return cart;
    }
    public double getTotal(){
      return total;
    }
}
