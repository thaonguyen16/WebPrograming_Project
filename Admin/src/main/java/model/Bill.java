package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bill")
public class Bill implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
	
    private String BillCode;
    private String Country;
    private String FullName;
    private String Address;
    private String Email;
    private String Phone;
    private String OrderNotes;
    
    private String user_name;
    private String date;
    
    private String CartCode;
    private double AllBill;
    private int Quantity;
    private String Status;
    
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getBillCode() {
		return BillCode;
	}
	public void setBillCode(String billCode) {
		BillCode = billCode;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getFullName() {
		return FullName;
	}
	public void setFullName(String fullName) {
		FullName = fullName;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getOrderNotes() {
		return OrderNotes;
	}
	public void setOrderNotes(String orderNotes) {
		OrderNotes = orderNotes;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCartCode() {
		return CartCode;
	}
	public void setCart(String cart) {
		this.CartCode = cart;
	}
	public double getAllBill() {
		return AllBill;
	}
	public void setAllBill(double allBill) {
		AllBill = allBill;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
}

