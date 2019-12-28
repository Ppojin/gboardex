package com.hj.gboardex.user.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.hj.gboardex.user.domain.UserVO;
import com.hj.gboardex.user.service.UserService;

import javax.inject.Inject;

@Controller
@RequestMapping("user")
public class UserRegisterController {

    private final UserService userService;

    @Inject
    public UserRegisterController(UserService userService) {
        this.userService = userService;
    }

    // 회원가입 페이지
    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String registerGET() throws Exception {
        return "user/register";
    }

    // 회원가입 처리
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes) throws Exception {

        String hashedPw = BCrypt.hashpw(userVO.getUserPwd(), BCrypt.gensalt());
        userVO.setUserPwd(hashedPw);
        userService.register(userVO);
        redirectAttributes.addFlashAttribute("msg", "REGISTERED");

        return "redirect:/user/login";
    }
}