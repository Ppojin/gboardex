package com.hj.gboardex.main.persistence;

import com.hj.gboardex.group.domain.SubscribeVO;
import com.hj.gboardex.main.domain.MainVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class MainDAOImpl implements MainDAO {

    private static final String NAMESPACE = "com.hj.gboardex.mappers.group.GroupMapper";

    private final SqlSession sqlSession;

    @Inject
    public MainDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void createGroup(MainVO mainVO) throws Exception {
        sqlSession.insert(NAMESPACE + ".createGroup", mainVO);
        sqlSession.insert(NAMESPACE + ".createSubscribe", mainVO);
    }

    @Override
    public List<MainVO> listAll(MainVO mainVO) throws Exception{
        return sqlSession.selectList(NAMESPACE + ".listAll", mainVO);
    }

    @Override
    public String inviteCodeInput(SubscribeVO subscribeVO) throws Exception{
        System.out.println(subscribeVO.toString());
        String NAMESPACE = "com.hj.gboardex.mappers.service.SubscribeMapper";
        SubscribeVO result = sqlSession.selectOne(NAMESPACE + ".selectOneGroupName", subscribeVO);
        if (result.getUserID() == 0){
            sqlSession.update(NAMESPACE + ".updateSubscribe_joinGroup", subscribeVO);
            return Integer.toString(result.getGroupID());
        } else {
            return "fail";
        }
    }
}
