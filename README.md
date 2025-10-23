# Code

## MyBatis를 활용한 코드 조각 게시판 만들어보기

### Spring MVC 구축 + MyBatis 연동

- new - spring legacy project - spring mvc project
- project name: `Code`
- root package: `com.test.code`

---
#### 자바 버전과 pom.xml 수정

- 프로젝트 우클릭 -> Project Facets -> Java 11
- properties 태그에 있는 java-version 11
- 그 아래 스프링 버전 5.0.7.RELEASE로
- 맨 아래쪽 plugin 태그 -> maven plugin 내부
  - configuration 태그 내부 source, target 내부 11로 변경

#### 의존성 추가
- log4j, lombok, 등등 뭐 많이 추가하고 버전도 변경

#### MyBatis 세팅
##### MyBatis 세팅이 완료되면 단위 테스트 필수
- `root-context.xml` -> bean 4개 생성
- log4j 설정
  - `src/main/resources` 폴더에 `log4j.xml`과 `log4jdbc.log4j2.properties` 두가지 추가
- Mybatis 관련(src/main/resources 폴더에 복사)
  - `mappers` 폴더 -> `code.xml`
    - 기존 파일 복사 후 파일명과 루트태그의 namespace 변경(지금은 code)
    - 루트태그를 제외한 내부 내용은 삭제
  - `config` -> `mybatis-config.xml`
    - 이전 프로젝트에서 복사 후 루트태그를 제외한 내용은 삭제
- MyBatis 설정 완료 > 단위 테스트
  - `src/test/java` > `com.test.code.model` > `DBTests.java`

---

#### 프로젝트 개요
- 코드 조각(code snippets) 게시판
- 주요 업무
  - 목록 보기(R)
  - 상세보기(R)
  - 쓰기(C)

---

#### 파일 및 패키지 세팅
- Code -> `script.sql`
- com.test.code.controller 
  - `CodeController.java` : 메인 컨트롤러
- com.test.code.model
  - `CodeDAO.java`(I)
  - `CodeDAOImpl.java`(C)
  - `CodeDTO.java`
  - `LanguageDTO.java`
- views
  - `list.jsp`
  - `view.jsp`
  - `add.jsp`