package usolv.com.vn.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import usolv.com.vn.DTO.UserDTO;

@Controller
public class UserManagementController {
	private UserDTO userDTO;

	public UserManagementController() {
		userDTO = new UserDTO();
	}

	@RequestMapping(value = "get-all-users", method = RequestMethod.GET)
	public String GetAllQuestion(ModelMap model) {
		List<UserDTO> listUsersDTO = userDTO.GetAllUsersDTO();
		model.addAttribute("listUsersDTO", listUsersDTO);
		return "get-all-users";
	}

}
