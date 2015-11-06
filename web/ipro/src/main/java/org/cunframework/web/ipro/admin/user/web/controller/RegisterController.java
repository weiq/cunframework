package org.cunframework.web.ipro.admin.user.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.cunframework.modules.common.web.controller.BaseController;
import org.cunframework.web.ipro.admin.user.entity.User;
import org.cunframework.web.ipro.admin.user.repository.UserRepository;
import org.cunframework.web.ipro.admin.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 用户注册的Controller.
 * 
 * @author weiq
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController extends BaseController<User, Long> {
	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String registerForm() {
		return "admin/account/signup";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String register(@Valid User user, BindingResult result, RedirectAttributes redirectAttributes) {
		userService.save(user);
		return "redirect:/login";
	}

	/**
	 * Ajax请求校验loginName是否唯一。
	 */
	@RequestMapping(value = "checkLoginName")
	@ResponseBody
	public String checkLoginName(@RequestParam("loginName") String loginName) {
		return "true";
	}
}
