# 스프링MVC 웹 프로젝트
> 기존 웹 서비스들 중 대표적으로 카페와 같은 서비스를 만들려고 프로젝트를 시작했고, 중간부터는 네이버의 밴드를 참고하며 작업했습니다.

스프링MVC를 이용하여 공개되지 않는, 폐쇄적인 카페를 만들 수 있고 초대한 사람만이 활동할 수 있는 카페에서 투표, 사진 공유, 일정 공유 및 확인, 게시글 작성 등 모임에서 필요한 기능들을 포함한 홈페이지 제작.

## 환경
### 서버 구성
| 서버 | 환경 |
|---|---|
| WEB | apache   |
| WAS | Tomcat 9.0.27 |
| DB | MySQL 8.0.18 |

### 개발 언어
| 언어 | 환경 |
|---|---|
| UI | Bootstrap 4, AdminLTE 3 |
| 프레임워크 | spring 5.2.1.RELEASE |

### 프레임워크 환경
| 언어 | 버전 |
|---|---|
| Java | 1.8 |
| maven | 3.8.1 |
| MyBatis | 3.5.3 |
이하 생략...

## 설치
1. 프로젝트 최상단의 `maindb.sql` 을 이용하여 테이블 생성
1. `./src/main/webapp/WEB-INF/conf/db-context_back.xml` 파일의 `ID`와 `password`를 설치된 MySQL DBMS 에 맞게 설정
    ```xml
    <property name="username" value="ID" />
    <property name="password" value="password" />    
    ``` 
1. `db-context_back.xml` 파일명을 `db-context.xml` 으로 수정
1. `maven` 을 이용하여 프로젝트 라이브러리 불러오기

## 목표 설정
### 우선 개선
- [ ] 그룹 삭제 만들기
  - [ ] `vote_item`, `vote_selected` 테이블에 `groupID` 활용하도록 수정
  - [ ] 강퇴 기능 만들기
  - [ ] `image`테이블과 연결된 이미지와 그룹 대표사진도 함께 삭제하기
- [ ] like 버튼 완성하기
  - [ ] `article_like` 테이블에 `groupID` 활용하도록 수정
- [ ] 게시판 관리창 수정
- [ ] 게시글 카드 `jstl` => `ajax`
 
### 추후 개선
- [ ] 회원 이미지 만들기
- [ ] 회원 생일 입력 만들기
- [ ] 회원 생일 달력에 보이게 만들기
- [ ] 그룹 이름,이미지 수정 만들기
- [ ] 그룹 메인 화면 수정 만들기
