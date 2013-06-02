package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Administrator
 */
public class PizzaBean {
    private String url;
    private int id;
    private String name;
    private double price;
    private String description;
    private String pic_url;
    private int sales;
    
    private Connection con;
    
    public PizzaBean(){
    }
    public PizzaBean(String _url, int _idproduct){
        url = _url;
        id = _idproduct;
    }
    public void addSales(int quantity)throws Exception{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            con.setAutoCommit(false);
            
            String querySQL = "SELECT sales from `product` where idproduct ='"+id+"'";
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery(querySQL);
            rs.next();
            quantity += rs.getInt("sales");  
            
            String sql = "UPDATE `product` SET `sales`="+quantity+" WHERE `idproduct`='"+id+"';";
            System.out.println(sql);
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.execute();
            con.commit();         
        }
        catch(Exception e){
            con.rollback();
        }
    }
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the pic_url
     */
    public String getPic_url() {
        return pic_url;
    }

    /**
     * @param pic_url the pic_url to set
     */
    public void setPic_url(String pic_url) {
        this.pic_url = pic_url;
    }

    /**
     * @return the sals
     */
    public int getSales() {
        return sales;
    }

    /**
     * @param sals the sals to set
     */
    public void setSales(int sales) {
        this.sales = sales;
    }
    
    
}
