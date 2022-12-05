package dao;

import model.Product;
import model.ProductDetail;
import model.ProductImageDetail;

import java.util.List;

public interface ProductDao
{
    List<Product> get_all();
    List<Product> get_by_category(int id);
    
    Product getProductByID(int id);
    ProductDetail getProductDetailByID(int id);
    List<ProductImageDetail> getProductImageByID(int id);
    
    List<Product> getByCategory(String category);
    List<Product> getByCategory_Brand(String category, String brand);
    
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    long sum();
}
