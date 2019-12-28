package com.hj.gboardex.user.persistence;

import com.hj.gboardex.user.domain.LoginDTO;
import com.hj.gboardex.user.domain.UserVO;

public interface UserDAO {

    // 회원가입 처리
    void register(UserVO userVO) throws Exception;

    // 로그인 처리
    UserVO login(LoginDTO loginDTO) throws Exception;
}