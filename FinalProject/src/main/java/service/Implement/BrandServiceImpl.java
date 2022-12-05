package service.Implement;

import java.util.List;

import dao.BrandDao;
import dao.Implement.BrandDaoImpl;
import model.Brand;
import service.BrandService;

public class BrandServiceImpl implements BrandService{
	BrandDao dao = new BrandDaoImpl();


	@Override
	public List<Brand> get_all() {
		// TODO Auto-generated method stub
		return dao.get_all();
	}


	@Override
	public List<Brand> get_brand_by_category(String category_code) {
		// TODO Auto-generated method stub
		return dao.get_brand_by_category(category_code);
	}
}
