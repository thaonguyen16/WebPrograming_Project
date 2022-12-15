package dao;

import model.Brand;
import model.Product;

import java.util.List;

public interface ProductDao
{
    List<Product> get_all();
    List<Product> get_by_category(String id);
    List<Brand> getAllBrand(String CategoryCode);
    List<Brand> getAllBrand();
    
    Product getByID(int id);
    
    void insert(Product product);
    void update(Product product);
    void delete(int pro_code);
    
    long sum();
    long sumByCategory(String category);
}
