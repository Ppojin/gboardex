package com.hj.gboardex.user.controller;

import com.hj.gboardex.main.domain.MainVO;
import com.hj.gboardex.user.domain.LoginDTO;
import com.hj.gboardex.user.domain.UserVO;
import com.hj.gboardex.user.service.UserService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserLoginController {

    private final UserService userService;

    @Inject
    public UserLoginController(UserService userService) {
        this.userService = userService;
    }

    // 로그인 페이지
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
        return "user/login";
    }

    // 로그인 처리
    @RequestMapping(value = "loginPost", method = RequestMethod.POST)
    public void loginPOST(LoginDTO loginDTO, Model model) throws Exception {
        UserVO userVO = userService.login(loginDTO);
        if (userVO == null || !BCrypt.checkpw(loginDTO.getUserPwd(), userVO.getUserPwd())) {
            return;
        }
        model.addAttribute("user", userVO);
    }

    @RequestMapping("logout")
    public String logout(HttpSession httpSession) throws Exception{
        httpSession.removeAttribute("login");
        httpSession.removeAttribute("currentGroup");
        return "redirect:/";
    }
}