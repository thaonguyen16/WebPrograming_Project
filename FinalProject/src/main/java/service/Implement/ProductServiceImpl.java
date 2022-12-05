package service.Implement;

import model.Product;
import model.ProductDetail;
import model.ProductImageDetail;
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
    public List<Product> get_by_category(int id)
    {
        return null;
    }

    @Override
    public void insert(Product product) {

    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public long sum() {
        return 0;
    }

	@Override
	public Product getProductByID(int id) {
		// TODO Auto-generated method stub
		return dao.getProductByID(id);
	}

	@Override
	public ProductDetail getProductDetailByID(int id) {
		// TODO Auto-generated method stub
		return dao.getProductDetailByID(id);
	}

	@Override
	public List<ProductImageDetail> getProductImageByID(int id) {
		// TODO Auto-generated method stub
		return dao.getProductImageByID(id);
	}

	@Override
	public List<Product> getByCategory(String category) {
		// TODO Auto-generated method stub
		return dao.getByCategory(category);
	}

	@Override
	public List<Product> getByCategory_Brand(String category, String brand) {
		// TODO Auto-generated method stub
		return dao.getByCategory_Brand(category, brand);
	}
}
