package beans;

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
