package usolv.com.vn.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usolv.com.vn.DAO.CategoryDAO;
import usolv.com.vn.DAO.Impl.CategoryDAOImpl;
import usolv.com.vn.entitys.CategoryEntity;

@Controller
public class CategoryManagermentController {
	private CategoryDAO categoryDAO;

	public CategoryManagermentController() {
		categoryDAO = new CategoryDAOImpl();
	}

	@RequestMapping(value = "get-all-categories", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap model) {
		List<CategoryEntity> listCategoriesEntity = categoryDAO.GetAllCategories();
		model.addAttribute("listCategoriesEntity", listCategoriesEntity);
		return "get-all-category";
	}
}
