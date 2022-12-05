package model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "product")
public class Product implements Serializable
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
	
    private String ProductName;
    private String CategoryCode;
    private String BrandCode;
    private long Qty;
    private long Sold;
    private String PriceRoot;
    private String PriceCurrent;
    private long InStock;
    private String imageURL;
    
    
    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName)
    {
        ProductName = productName;
    }

    public long getQty() {
        return Qty;
    }

    public void setQty(long qty) {
        Qty = qty;
    }

    public long getSold() {
        return Sold;
    }

    public void setSold(long sold) {
        Sold = sold;
    }

    public String getPriceRoot() {
        return PriceRoot;
    }

    public void setPriceRoot(String priceRoot) {
        PriceRoot = priceRoot;
    }

    public String getPriceCurrent() {
        return PriceCurrent;
    }

    public void setPriceCurrent(String priceCurrent) {
        PriceCurrent = priceCurrent;
    }

    public long getInStock() {
        return InStock;
    }

    public void setInStock(long inStock) {
        InStock = inStock;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

	public String getCategoryCode() {
		return CategoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		CategoryCode = categoryCode;
	}

	public String getBrandCode() {
		return BrandCode;
	}

	public void setBrandCode(String brandCode) {
		BrandCode = brandCode;
	}
}
