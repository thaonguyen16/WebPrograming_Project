package dao;

import java.util.List;

import model.Brand;

public interface BrandDao {
	List<Brand> get_all();
	List<Brand> get_brand_by_category(String category_code);
}
