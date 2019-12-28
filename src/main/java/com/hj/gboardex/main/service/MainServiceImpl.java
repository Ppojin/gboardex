package com.hj.gboardex.main.service;

import com.hj.gboardex.group.domain.SubscribeVO;
import com.hj.gboardex.main.domain.MainVO;
import com.hj.gboardex.main.persistence.MainDAO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service("MainService")
public class MainServiceImpl implements MainService {

    private final MainDAO mainDAO;

    @Inject
    public MainServiceImpl(MainDAO mainDAO) {
        this.mainDAO = mainDAO;
    }

    @Override
    public void createGroup(MainVO mainVO) throws Exception {
        mainDAO.createGroup(mainVO);
    }

    @Override
    public List<MainVO> listAll(MainVO mainVO) throws Exception{
        return mainDAO.listAll(mainVO);
    }

    @Override
    public String inviteCodeInput(SubscribeVO subscribeVO) throws Exception{
        return mainDAO.inviteCodeInput(subscribeVO);
    }
}
