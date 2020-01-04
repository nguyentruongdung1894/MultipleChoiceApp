package usolv.com.vn.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usolv.com.vn.DAO.QuestionDAO;
import usolv.com.vn.DAO.Impl.QuestionDAOImpl;
import usolv.com.vn.DTO.QuestionDTO;

@Controller
public class QuestionManagementController {
	private QuestionDTO questionDTO;
	private QuestionDAO questionDAO;

	public QuestionManagementController() {
		questionDTO = new QuestionDTO();
		questionDAO = new QuestionDAOImpl();
	}

	@RequestMapping(value = "get-all-question", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap model) {
		List<QuestionDTO> listQuestionsDTO = questionDTO.GetAllQuestionsDTO();
		model.addAttribute("listQuestionsDTO", listQuestionsDTO);
		return "get-all-questions";
	}
	
	@RequestMapping("deleteQuestion")
	public String DeleteQuestion(@ModelAttribute("questionId") String questionId ) {
		String model = null;
		if (questionDAO.DeleteQuestion(questionId)) {
			model = "redirect:get-all-question";
		} else {
			model = "error";
		}
		return model;
	}
}
