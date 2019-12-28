package com.hj.gboardex.commons.interceptor;

import com.hj.gboardex.group.domain.GroupDTO;
import com.hj.gboardex.main.domain.MainVO;
import com.hj.gboardex.user.domain.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

public class GroupInterceptor extends HandlerInterceptorAdapter {
    private static final String GROUP = "currentGroup";
    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    private static final String NAMESPACE = "com.hj.gboardex.mappers.group.GroupMapper";
    private final SqlSession sqlSession;

    @Inject
    public GroupInterceptor(SqlSession sqlSession){ this.sqlSession = sqlSession; }

    @Override
    // Todo: /user/login 대신 리다이렉팅할 페이지 만들기
    public boolean preHandle(HttpServletRequest request,
                           HttpServletResponse response,
                           Object handler) throws Exception {
        // 세션에서 userVO 가져오기
        HttpSession httpSession = request.getSession();
        UserVO userVO = (UserVO) request.getSession().getAttribute("login");
        if (userVO == null){
            response.sendRedirect("/user/login");
            return false;
        }
        int userID = userVO.getUserID();

        logger.info(request.getServletPath());

        // groupURL 가져오기
        List<String> listURL = Arrays.asList(request.getServletPath().split("[/?#]"));
        String groupURL = listURL.get(2);

        // session 에서 mainVO 가져오기
        MainVO originMainVO = (MainVO) request.getSession().getAttribute("currentGroup");

        // session.mainVO 존재여부
        if (originMainVO != null){
            // adminPage 입장
            if (listURL.size() > 3){
                if (listURL.get(3).equals("admin")){
                    logger.info("confirm admin...");
                    MainVO mainVO = confirmSession(userID, groupURL, httpSession);
                    if (mainVO.getGroupManager() == userVO.getUserID()){
                        logger.info("confirm admin success \ngroupManager = "+mainVO.getGroupManager()+"\nuser = "+userVO.getUserID());
                        return true;
                    } else {
                        logger.info("confirm admin fail \ngroupManager = "+mainVO.getGroupManager()+"\nuser = "+userVO.getUserID());
                        return false;
                    }
                }
            }

            if (originMainVO.getGroupURL() != null){
                if (originMainVO.getGroupURL().equals(groupURL)) {
                    logger.info("Already joined this group");
                    return true;
                }
            }
        }

        MainVO mainVO = confirmSession(userID, groupURL, httpSession);
        // DB.groupURL 과 /group/{groupURL} 대조
        if (mainVO.getGroupURL() != null){
            if (mainVO.getGroupURL().equals(groupURL)){
                logger.info("Group join success");
                return true;
            }
        }
        logger.info("Group join failed");
        logger.info(request.getRequestURI());
        response.sendRedirect("/user/login");
        return false;
    }


    private MainVO confirmSession(int userID, String groupURL, HttpSession httpSession) {
        // mappers.group.GroupMapper.groupAuth 이용해서 DB 조회
        MainVO mainVO = new MainVO();
        GroupDTO groupDTO = new GroupDTO(userID, groupURL);
        if (sqlSession.selectOne(NAMESPACE + ".groupAuth", groupDTO) != null) {
            mainVO = sqlSession.selectOne(NAMESPACE + ".groupAuth", groupDTO);
            httpSession.setAttribute(GROUP, mainVO);
        }
        return mainVO;
    }
}
