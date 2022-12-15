package dao;

import model.Category;

import java.util.List;

public interface CategoryDao
{
    List<Category> get_all();
    Category get_by_id(String id);
    Category getbyid(int id);
    
    void insert(Category category);
    void update(Category category);
    void delete(int id);
    long sum();
}
