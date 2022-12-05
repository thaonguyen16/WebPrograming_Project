package service.Implement;

import dao.CategoryDao;
import dao.Implement.CategoryDaoImpl;
import model.Category;
import service.CategoryService;

import java.util.List;

public class CategoryServiceImpl implements CategoryService
{
    CategoryDao dao = new CategoryDaoImpl();
    @Override
    public List<Category> get_all() {
        return dao.get_all();
    }

    @Override
    public Category get_by_id(int id) {
        return dao.get_by_id(id);
    }

    @Override
    public void insert(Category category) {
        dao.insert(category);
    }

    @Override
    public void update(Category category) {
        dao.update(category);
    }

    @Override
    public void delete(int id) {
        dao.delete(id);
    }

    @Override
    public long sum() {
        return dao.sum();
    }
}
