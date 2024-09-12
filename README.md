# `ETC` - <인터넷 강의 사이트(3회차 프로젝트)>📺 <br>
1. 작업 기간 : 2024. 05. 27 ~ 2024. 06. 17<br>
2. 주제 : 온라인 인터넷 강의 사이트
3. 목적 : 수험생을 대상으로 고객이 온라인에서 ETC 사이트를 통하여 희망하는 해당 과목의 월 구독권을 구매함으로써, 인터넷 강의 동영상과 교재로 학습하는 것을 주목적으로 진행된 인터넷 강의 사이트 프로젝트입니다.<br>
4. 주요 기능 : 로그인, 회원가입<br>
- 역할 분담 : <br>
![image](https://github.com/user-attachments/assets/ed92bae7-95e5-4e99-ab8e-44880ba7e268)<br>
- 일정표 : ![image](https://github.com/user-attachments/assets/df22f931-561d-436a-9acf-9a62ecd86058) <br>
- 요구사항 정의서 : <br>
(1) 로그인 & (2) 회원가입
  ![image](https://github.com/user-attachments/assets/5ede1521-e916-46a2-ad30-b1a16fb8f66c) <br>
- 워크 플로우 : <br>
(1) 로그인 & (2) 회원가입
  ![image](https://github.com/user-attachments/assets/3c6c7404-f6ea-4a30-a9bf-0e7ce617a85f) <br>
- PPT 자료<br>
  https://github.com/hsy2493/ETC/issues/1#issue-2509846953
5. 작업 툴 :
  - Front-end : HTML, CSS, Javascript, JSP<br>
  - Back-end : Java, Spring mvc, Database<br>
6. 작업 인원 : 4명<br>

7. 결과물 :<br>
## <화면구현><br>
(1) 로그인<br>
![image](https://github.com/user-attachments/assets/0de627df-dc3b-4804-8409-c077de5f6b58)<br>
<설명><br>
-아이디와 비밀번호를 입력한 후 로그인을 시도한다.<br>
- 로그인 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/ETC/blob/master/ETC/src/main/webapp/ETC/Login/login.jsp <br>

(2) 회원가입<br>
![image](https://github.com/user-attachments/assets/14c11b94-99e7-4f55-8a22-52fd1f3b8a04)<br>
<설명><br>
-회원정보 입력 후, 회원 등록을 선택한다.<br>
- 회원가입 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/ETC/blob/master/ETC/src/main/webapp/ETC/MemberShip/memberInsert.jsp <br>

## <기능구현><br>
(1) 로그인<br>
<설명> <br>
- Database에 저장된 회원정보로, 로그인을 시도한다.<br>
![image](https://github.com/user-attachments/assets/eb6fe99d-0040-46be-825b-7af2ef749cac) <br>
- 아이디 : himan, 비밀번호 : 1234로 등록된 회원정보인 경우<br>
- 로그인 - 기능구현 상세 코드 <br>
https://github.com/hsy2493/ETC/blob/master/ETC/database/ETC/mem.sql <br>
<br>

- 로그인 성공 <br>
  ![image](https://github.com/user-attachments/assets/378d4581-df42-4961-98ff-5c5e6683c21b) <br>
![image](https://github.com/user-attachments/assets/b98fd20b-7aa5-45c0-bc9b-5ddc3ac0c9d8) <br>
<설명><br>
-로그인 성공 시, if문과 response.sendRedirect을 활용하여, 메인 페이지로 리다이랙션 한다.<br>
- 로그인 성공 - 기능구현 상세 코드 <br>
https://github.com/hsy2493/ETC/blob/master/ETC/src/main/webapp/ETC/Login/login.jsp <br>

- 로그인 실패 <br>
  ![image](https://github.com/user-attachments/assets/555f52b8-a5e3-4eca-8c63-7c8903582f03) <br>
<설명> <br>
-로그인 실패 시, alert을 활용하여, 로그인 실패 메세지가 출력되면서, 로그인 페이지에 머문다.<br>
- 로그인 실패 - 기능구현 상세 코드 <br>
https://github.com/hsy2493/ETC/blob/master/ETC/src/main/webapp/ETC/Login/login.jsp <br>

(2) 회원가입<br>
- 회원정보 등록 <br>
![image](https://github.com/user-attachments/assets/92168774-9956-496c-9168-8ec0d52fd16b) <br>
![image](https://github.com/user-attachments/assets/8c3af48d-9f49-48ed-aa2c-bf95316421c7) <br>
![image](https://github.com/user-attachments/assets/cfbc5898-d8a5-4c55-ad92-058e0cf66097) <br>

![image](https://github.com/user-attachments/assets/66fc0f31-3c29-44ea-98e8-b04b1d838dfa) <br>
![image](https://github.com/user-attachments/assets/324bd0ac-6229-45b5-8ccf-529938b9b4ef) <br>
![image](https://github.com/user-attachments/assets/209c2974-92b4-49e0-9227-837c09f97763) <br>

<설명> <br>
-회원정보 등록 시, Database 연동 처리 후, <br>
try문과 SQL문을 활용하여, 입력한 회원정보를 Database에 저장한다. <br>
- 회원가입 : 회원정보 등록 - 기능구현 상세 코드 <br>
https://github.com/hsy2493/ETC/blob/master/ETC/src/main/java/ETC/a04_database/DBconJ/DBconJ.java <br>
https://github.com/hsy2493/ETC/blob/master/ETC/src/main/java/ETC/memDao.java<br>

<b>8. 성과 
- Java에서 Database 연동 후, try문과 SQL문을 활용하여, 회원가입 중 회원정보 등록을 DB에 저장하는 것까지 기능구현이 가능함.
- if문과 Java의 session scope 범위를 활용하여, 로그인 중 Database에 저장된 회원정보로 로그인 유효성 검사 시도 기능구현이 가능함.
- Database Table 설계가 가능함.
- 기술적 구현(Back) 뿐만 아니라, 비주얼적 요소(Front) 또한 고객의 입장에서 생각하고 고려하면서 프로젝트를 진행함.
- Bootstrap 템플릿를 사용하여 프로젝트 진행하는 것을 경험함. <br>
</b>



