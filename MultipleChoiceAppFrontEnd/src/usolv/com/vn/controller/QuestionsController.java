package usolv.com.vn.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usolv.com.vn.DTO.QuestionDTO;

@Controller
public class QuestionsController {
	private QuestionDTO questionDTO;
	public QuestionsController() {
		questionDTO = new QuestionDTO();
	}
	
	@RequestMapping(value = "get-random-questions", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap modelmap) {
		List<QuestionDTO> listQuestionsDTO = questionDTO.GetAllQuestionsDTO();
		modelmap.addAttribute("listQuestionsDTO", listQuestionsDTO);
		return "get-all-category";
	}
	
	@RequestMapping(value = "welcome", method = RequestMethod.POST)
	public String SubmitSucc(@ModelAttribute("listQuestionsDTO") QuestionDTO listQuestionsDTO) {
		return "welcome";
	}
}
