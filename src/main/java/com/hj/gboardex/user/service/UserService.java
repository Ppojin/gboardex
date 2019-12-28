package com.hj.gboardex.user.service;

import com.hj.gboardex.user.domain.LoginDTO;
import com.hj.gboardex.user.domain.UserVO;

public interface UserService {
    // 회원 가입 처리
    void register(UserVO userVO) throws Exception;
    // 로그인 처리
    UserVO login(LoginDTO loginDTO) throws Exception;
}
