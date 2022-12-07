package model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "lineitem")
public class LineItem implements Serializable
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    private int Id_Category;
    private int Name;
    private double Price;
    private int quantity;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getId_Category() {
        return Id_Category;
    }

    public void setId_Category(int id_Category) {
        Id_Category = id_Category;
    }

    public int getName() {
        return Name;
    }

    public void setName(int name) {
        Name = name;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double price) {
        Price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
