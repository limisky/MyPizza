package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Administrator
 */
public class OrderBean {
    private String url = null;
    private String username = null;
    private String name = null;
    private String street = null;
    private String zip = null;
    private String city = null;
    private String country = null;
    private String total = null;
    
    private Integer idorder = 0;
    private Integer idproduct = 0;  
    private Integer quantity = 0;
    
    private Connection con;
    private String addOrderSQL;
    private PreparedStatement addOrderPstmt;
    private String queryOrderSQL;
    private Statement stmt = null;
    private ResultSet rs = null;

    public OrderBean(String _url){
        this.url = _url;
    }
    public OrderBean(String _url,Integer _idorder, Integer _idproduct, Integer _quantity){
        this.url = _url;
        this.idorder = _idorder;
        this.idproduct = _idproduct;
        this.quantity = _quantity;
    }
    public void addOrderProduct()throws Exception{
        String sql = "INSERT INTO `order_product` (`idorder`, `idproduct`, `quantity`) ";
        sql += "VALUES (?,?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            con.setAutoCommit(false);
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, idorder);
            pstmt.setInt(2, idproduct);
            pstmt.setInt(3, quantity);
            pstmt.execute();
            con.commit();         
        }
        catch(Exception e){
            con.rollback();
        }
        
    }
    public Integer addOrder() throws Exception{
        Integer idorder=0;
        addOrderSQL = "INSERT INTO `order` (`user_name`, `name`, `street_address`, `zip_code`, `city`, `country`, `ordertime`, `total`) ";
        addOrderSQL += "VALUES (?,?,?,?,?,?,?,?)";
        Date currentTime = new Date();   
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
        String dateString = formatter.format(currentTime);   
           
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
            con.setAutoCommit(false);
            addOrderPstmt = con.prepareStatement(addOrderSQL);
            addOrderPstmt.setString(1,username);
            addOrderPstmt.setString(2,name);
            addOrderPstmt.setString(3,street);
            addOrderPstmt.setString(4,zip);
            addOrderPstmt.setString(5,city);
            addOrderPstmt.setString(6,country);
            addOrderPstmt.setString(7,dateString);
            addOrderPstmt.setString(8,total);
            addOrderPstmt.execute();
            con.commit();
            
            queryOrderSQL = "SELECT idorder from `order` where user_name ='"+username+"'";
            queryOrderSQL += " and ordertime ='"+dateString+"'";
            stmt = con.createStatement();
            rs= stmt.executeQuery(queryOrderSQL);
            rs.next();
            idorder = rs.getInt("idorder");            
        }
        catch(Exception e){
            con.rollback();
        }
        return idorder;
    }
    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the street
     */
    public String getStreet() {
        return street;
    }

    /**
     * @param street the street to set
     */
    public void setStreet(String street) {
        this.street = street;
    }

    /**
     * @return the zip
     */
    public String getZip() {
        return zip;
    }

    /**
     * @param zip the zip to set
     */
    public void setZip(String zip) {
        this.zip = zip;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
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
     * @return the total
     */
    public String getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(String total) {
        this.total = total;
    }
    
}
