package controller;

import java.io.IOException;
import java.util.ArrayList;
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
import model.CartDB;
import model.LineItem;
import service.BillService;
import service.Implement.BillServiceImpl;

/**
 * Servlet implementation class Order
 */
@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BillService billService;
	
	private List<Bill> list_bill;
	private List<CartDB> list_cart;
	//private List<LineItem> list_lineItem;
	private List<BillList> list_bill_lineItem;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
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
		String url = "views/menu-order.jsp";
		
		this.list_bill_lineItem = new ArrayList<>();

		this.list_bill = billService.getAllBillByStatus("Checking");
		
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
			System.out.println(this.list_bill_lineItem.size());
		}
		
		session.setAttribute("list_bill_lineItem", this.list_bill_lineItem);
		
		request.setAttribute("title", "Invoice");
        request.setAttribute("page_title" , "Unprocessed");
		
		request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession();
    	String action = request.getParameter("action");
    	
    	if(action.equals("showClassify")) {
    		
    		String type = request.getParameter("type");
    		getInvoice(request,response,type);
    	}
    	else if(action.equals("accept_bill")) {

    		String bill_code = request.getParameter("bill_code");
    		this.list_bill = billService.getAllBillByStatus("Checking");
    		
    		Bill bill = new Bill();
    		
    		for(Bill b: list_bill) {
    			if(b.getBillCode().equals(bill_code))
    			{
    				bill.setID(b.getID());
    				bill.setAddress(b.getAddress());
    				bill.setAllBill(b.getAllBill());
    				bill.setBillCode(bill_code);
    				bill.setCart(b.getCartCode());
    				bill.setStatus("Delivering");
    				bill.setCountry(b.getCountry());
    				bill.setFullName(b.getFullName());
    				bill.setPhone(b.getPhone());
    				bill.setOrderNotes(b.getOrderNotes());
    				bill.setUser_name(b.getUser_name());
    				bill.setQuantity(b.getQuantity());
    				bill.setDate(b.getDate());
    				bill.setEmail(b.getEmail());
    			}		
    		}
    		
    		billService.edit(bill);
    		getInvoice(request,response,"Checking");
    	}
    	else if(action.equals("complete_bill")) {

    		String bill_code = request.getParameter("bill_code");
    		this.list_bill = billService.getAllBillByStatus("Delivering");
    		
    		Bill bill = new Bill();
    		
    		for(Bill b: list_bill) {
    			if(b.getBillCode().equals(bill_code))
    			{
    				bill.setID(b.getID());
    				bill.setAddress(b.getAddress());
    				bill.setAllBill(b.getAllBill());
    				bill.setBillCode(bill_code);
    				bill.setCart(b.getCartCode());
    				bill.setStatus("Complete");
    				bill.setCountry(b.getCountry());
    				bill.setFullName(b.getFullName());
    				bill.setPhone(b.getPhone());
    				bill.setOrderNotes(b.getOrderNotes());
    				bill.setUser_name(b.getUser_name());
    				bill.setQuantity(b.getQuantity());
    				bill.setDate(b.getDate());
    				bill.setEmail(b.getEmail());
    			}		
    		}
    		
    		billService.edit(bill);
    		getInvoice(request,response,"Delivering");
    	}
    	else if(action.equals("delete_bill")) {
    		
    		String bill_code = request.getParameter("bill_code");
    		String status = request.getParameter("status");
    		
    		this.list_bill = billService.getAllBillByStatus(status);
    		
    		Bill bill = new Bill();
    		
    		for(Bill b: list_bill) {
    			if(b.getBillCode().equals(bill_code))
    			{
    				bill.setID(b.getID());
    				bill.setAddress(b.getAddress());
    				bill.setAllBill(b.getAllBill());
    				bill.setBillCode(bill_code);
    				bill.setCart(b.getCartCode());
    				bill.setStatus("Delete");
    				bill.setCountry(b.getCountry());
    				bill.setFullName(b.getFullName());
    				bill.setPhone(b.getPhone());
    				bill.setOrderNotes(b.getOrderNotes());
    				bill.setUser_name(b.getUser_name());
    				bill.setQuantity(b.getQuantity());
    				bill.setDate(b.getDate());
    				bill.setEmail(b.getEmail());
    			}		
    		}
    		
    		billService.edit(bill);
    		getInvoice(request,response,status);
    	}
    	
    
    	
    	request.getRequestDispatcher("views/menu-order.jsp").forward(request, response);
	}
    
    public void getInvoice(HttpServletRequest request, HttpServletResponse response , String type) {
    	
    	HttpSession session = request.getSession();
    	
    	this.list_bill_lineItem = new ArrayList<>();

		this.list_bill = billService.getAllBillByStatus(type);
		
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
		
		request.setAttribute("title", "Invoice");
        request.setAttribute("page_title" , type);
		session.setAttribute("list_bill_lineItem", this.list_bill_lineItem);
    }

}
