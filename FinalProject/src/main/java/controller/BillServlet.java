package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.Bill;
import model.BillList;
import model.Cart;
import model.CartDB;
import model.LineItem;
import service.BillService;
import service.Implement.BillServiceImpl;

/**
 * Servlet implementation class BillServlet
 */
@WebServlet("/bill")
public class BillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BillService billService;
	
	private List<Bill> list_bill;
	private List<CartDB> list_cart;
	private List<LineItem> list_lineItem;
	private List<BillList> list_bill_lineItem;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
    	this.billService = new BillServiceImpl();
    	this.list_bill_lineItem = new ArrayList<>();
    	this.list_cart = new ArrayList<>();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		Account user = (Account) session.getAttribute("user");
		
		session.removeAttribute("registerStatusTrue");
		session.removeAttribute("loginStatusTrue");
		
		String url = "views/home.jsp";
		
		if(user == null)
		{
			url = "views/login.jsp";
			session.setAttribute("message_status", "Login to access your bill");
		}
		else {
			this.list_bill_lineItem = new ArrayList<>();

			this.list_bill = billService.getAllBillbyUser(user.getUsername());
			
			for(Bill bill: list_bill) 
			{
				this.list_cart = new ArrayList<>();
				this.list_cart.addAll(billService.getAllCartByBill(bill.getCartCode()));
				
				BillList billList = new BillList();
				billList.setAddress(bill.getAddress());
				billList.setAllBill(bill.getAllBill());
				billList.setBillCode(bill.getBillCode());
				billList.setCountry(bill.getCountry());
				billList.setDate(bill.getDate());
				billList.setEmail(bill.getEmail());
				billList.setFullName(bill.getFullName());
				billList.setID(bill.getID());
				billList.setPhone(bill.getPhone());
				billList.setOrderNotes(bill.getOrderNotes());
				billList.setUser_name(bill.getUser_name());
				billList.setStatus(bill.getStatus());
				billList.setQuantity(bill.getQuantity());
				
				List<LineItem> list_line = new ArrayList<>();
				
				for(CartDB cart : this.list_cart)
				{
					LineItem line = billService.getAllLineItemByCart(cart.getLineItemID());
					
					list_line.add(line);
					
				}
				
				billList.setList_lineItem(list_line);
				
				this.list_bill_lineItem.add(billList);
			}
			
			session.setAttribute("list_bill", this.list_bill_lineItem);
			
			url = "views/bill.jsp";
			
			session.removeAttribute("message_status");
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
