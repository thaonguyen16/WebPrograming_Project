package service.Implement;

import model.Brand;
import model.Product;
import service.ProductService;

import java.util.List;

import dao.ProductDao;
import dao.Implement.ProductDaoImpl;

public class ProductServiceImpl implements ProductService
{
	ProductDao dao = new ProductDaoImpl();

    @Override
    public List<Product> get_all() {
        return dao.get_all();
    }

    @Override
    public List<Product> get_by_category(String id)
    {
        return dao.get_by_category(id);
    }

    @Override
    public void insert(Product product) {
    	dao.insert(product);
    }

    @Override
    public void update(Product product) {
    	dao.update(product);
    }

    @Override
    public void delete(int id) {
    	dao.delete(id);
    }

    @Override
    public long sum() {
        return dao.sum();
    }

	@Override
	public List<Brand> getAllBrand(String CategoryCode) {
		// TODO Auto-generated method stub
		return dao.getAllBrand(CategoryCode);
	}

	@Override
	public long sumByCategory(String category) {
		// TODO Auto-generated method stub
		return dao.sumByCategory(category);
	}

	@Override
	public List<Brand> getAllBrand() {
		// TODO Auto-generated method stub
		return dao.getAllBrand();
	}

	@Override
	public Product getByID(int id) {
		// TODO Auto-generated method stub
		return dao.getByID(id);
	}
}
