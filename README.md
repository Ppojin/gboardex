# 스프링MVC 웹 프로젝트
> 기존 웹 서비스들 중 대표적으로 카페와 같은 서비스를 만들려고 프로젝트를 시작했고, 중간부터 네이버의 밴드에서 영감을 받으며 작업했습니다.

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
| 프레임워크 | spring 5.2.1.RELE며ASE |

### 프레임워크 환경
| 언어 | 버전 |
|---|---|
| Java | 1.8 |
| maven | 3.8.1 |
| MyBatis | 3.5.3 |
이하 생략...

## 설치
1. 프로젝트 최상단의 `maindb.sql` 을 이용하여 테이블 생성
1. `./src/main/webapp/WEB-INF/conf/db-context_back.xml` 파일의 ID와 password를 설치된 MySQL DBMS 에 맞게 설정 
    ```xml
    <property name="username" value="ID" />
    <property name="password" value="password" />    
    ``` 
1. `maven` 을 이용하여 프로젝트 라이브러리 불러오기

## 목표 설정
| 목표 | 시작 | 기한 | 완료 |
|---|---|---|---|
| 그룹 삭제 만들기 | DEC 28, 2019 | | | 