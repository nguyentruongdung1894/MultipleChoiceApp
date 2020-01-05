package usolv.com.vn.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usolv.com.vn.DAO.CategoryDAO;
import usolv.com.vn.DAO.Impl.CategoryDAOImpl;
import usolv.com.vn.DTO.CategoriesDTO;
import usolv.com.vn.entitys.CategoryEntity;

@Controller
public class CategoryManagermentController {
	private CategoriesDTO categoriesDTO;
	private CategoryDAO categoryDAO;

	public CategoryManagermentController() {
		categoriesDTO = new CategoriesDTO();
		categoryDAO = new CategoryDAOImpl();
	}

	@RequestMapping(value = "get-all-categories", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap model) {
		List<CategoriesDTO> listCategoriesDTOEntity = categoriesDTO.GetAllCategoriesDTO();
		model.addAttribute("listCategoriesDTOEntity", listCategoriesDTOEntity);
		return "get-all-category";
	}

	@RequestMapping("deleteCategory")
	public String DeleteCategory(@ModelAttribute("categoryId") String categoryId) {
		String model = null;
		if (categoryDAO.DeleteCategory(categoryId)) {
			model = "redirect:get-all-categories";
		} else {
			model = "error";
		}
		return model;
	}

	@RequestMapping(value = "add-category")
	public String SaveCategory(ModelMap modelmap) {
		CategoryEntity categoryEntity = new CategoryEntity();
		modelmap.addAttribute("categoryEntity", categoryEntity);
		return "add-category";
	}

	@RequestMapping(value = "add-category-succ", method = RequestMethod.POST)
	public String SaveQuestionSucc(@ModelAttribute("categoryEntity") CategoryEntity categoryEntity) {
		String model = null;
		if (categoryDAO.AddCategory(categoryEntity)) {
			model = "redirect:get-all-categories";
		} else {
			model = "error";
		}
		return model;
	}
}
