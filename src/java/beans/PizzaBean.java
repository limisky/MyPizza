package beans;

/**
 *
 * @author Administrator
 */
public class PizzaBean {
    private int id;
    private String name;
    private double price;
    private String description;
    private String pic_url;
    private int sales;
    
    public PizzaBean(){
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
