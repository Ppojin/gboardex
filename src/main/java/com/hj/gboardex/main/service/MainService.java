package com.hj.gboardex.main.service;

import com.hj.gboardex.group.domain.SubscribeVO;
import com.hj.gboardex.main.domain.MainVO;

import java.util.List;

public interface MainService {
    // 그룹 생성
    void createGroup(MainVO mainVO) throws Exception;
    // 그룹 리스트
    List<MainVO> listAll(MainVO mainVO) throws Exception;
    // 초대코드
    String inviteCodeInput(SubscribeVO subscribeVO) throws Exception;
}
