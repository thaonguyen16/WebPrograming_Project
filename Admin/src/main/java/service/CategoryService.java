package service;

import model.Category;

import java.util.List;

public interface CategoryService
{
    List<Category> get_all();
    
    Category get_by_id(String id);
    Category getbyid(int id);
    
    void insert(Category category);
    void update(Category category);
    void delete(int id);
    long sum();
}
