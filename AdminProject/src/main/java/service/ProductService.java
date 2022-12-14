package service;

import model.Product;

import java.util.List;

public interface ProductService
{
    List<Product> get_all();
    List<Product> get_by_category(int id);
    void insert(Product product);
    void update(Product product);
    void delete(int id);
    long sum();
}