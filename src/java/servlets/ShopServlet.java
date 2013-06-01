package servlets;

import beans.*;
import java.io.IOException;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShopServlet extends HttpServlet {
    private static String homePage = null;
    private static String loginPage = null;
    private static String productPage = null; 
    private static String cartPage = null;
    private static String profilePage = null;
    private static String jdbcURL = null;
    
    private PizzaListBean pizzaList = null;
    /** Initializes the servlet.
     */
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        //defined in web.xml
        homePage = config.getInitParameter("HOME_PAGE");
        loginPage = config.getInitParameter("LOGIN_PAGE");
        productPage = config.getInitParameter("PRODUCT_PAGE");
        cartPage = config.getInitParameter("CART_PAGE");
        profilePage = config.getInitParameter("PROFILE_PAGE");
        jdbcURL = config.getInitParameter("JDBC_URL");
        
    }
    /** Destroys the servlet.
     */
    public void destroy() {    
    }
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sess = request.getSession();
        RequestDispatcher rd = null;
        CartBean cart;
        if(sess.getAttribute("cart") == null)
            cart = new CartBean();
        else
            cart=(CartBean)sess.getAttribute("cart");
        
        
        if(request.getParameter("action") == null || 
           request.getParameter("action").equals("home")){
        
        }
        else if(request.getParameter("action").equals("signup")){
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            UserBean ub = new UserBean(jdbcURL,username,password);
            try {
                if(ub.testUser(username)==true){
                    rd = request.getRequestDispatcher("login.jsp?mess=exist");
                    rd.forward(request, response);
                }
                else{
                    ub.addUser();
                    rd = request.getRequestDispatcher("signup_succ.jsp");
                    rd.forward(request, response);
                }
            } catch (Exception ex) {
                Logger.getLogger(ShopServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else if(request.getParameter("action").equals("logout"))
        {
            response.sendRedirect("http://localhost:8080/MyPizza/index.jsp"); //hard code!!
            sess.invalidate();
        }
        else if(request.getParameter("action").equals("loadPizza"))
        {
            try{
                pizzaList = new PizzaListBean(jdbcURL);
            }
            catch(Exception e){
                throw new ServletException(e);
            }
            ServletContext sc = getServletContext();
            sc.setAttribute("pizzaList",pizzaList.getProductList());
            
            rd = request.getRequestDispatcher(productPage);
            rd.forward(request,response);
        }
        else if(request.getParameter("action").equals("addCart")){
            Integer pizzaid = Integer.parseInt(request.getParameter("pizzaid"));
            Integer quantity =Integer.parseInt(request.getParameter("quantity"));
            
            PizzaBean pb = null;
            pb = pizzaList.getById(pizzaid);
            cart.addPizza(pb, quantity);
            
            sess.setAttribute("cart", cart);
            rd = request.getRequestDispatcher(productPage+"?id="+pizzaid+"&mess=succ");
            rd.forward(request,response);
        }
        else if(request.getParameter("action").equals("loadCart")){
            ServletContext sc = getServletContext();
            sc.setAttribute("cartList",cart.getCart());
            sc.setAttribute("total",cart.getTotal());
            //System.out.println(cart.getCart().size());
            rd = request.getRequestDispatcher(cartPage);
            rd.forward(request,response);
        }
        else if(request.getParameter("action").equals("loadProfile")){
            
            String username = request.getRemoteUser();
            try{
                ProfileBean pb = new ProfileBean(jdbcURL);
                pb.populate(username);
                sess.setAttribute("profile",pb);
            }
            catch(Exception e){
            }
            rd = request.getRequestDispatcher(profilePage);
            rd.forward(request,response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private CartBean getCart(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
