# 요약
메인로고 업데이트 예정.

프로젝트명 : 슈크림

슈크림은 Kream과 StockX를 참고하여 작업된 사이트로

신발 경매(입찰)의 기능을 가진 리셀 플랫폼입니다.


## 📌프로젝트 소개 
* 기간 : 2023.03.29 ~ 2023.04.25(진행중으로 마감기한 04.25 예정)
* 주제 : 신발 리셀 플랫폼
* 담당 파트 : 메인페이지, 오시는길, shop list, 검색, checkout(주문)기능 구현
* 사용 기술
    * Tool : STS(version3) , github, BootStrap
    * Tech : JAVA(openjdk-11) / JavaScript / CSS / jQuery / JSP / Spring MVC / HTML / Mybatis
    * DB : ORACLE 11XE SQL Developer
    * Server : Tomcat 9.0

## 🛠기능 요약
1. 구매자는 신발을 구매 입찰 하거나, 판매자가 판매 입찰중인 신발을 즉시 구매 할 수 있습니다.
2. 판매자도 신발을 판매 입찰 하거나, 구매자가 구매 입찰중인 신발을 즉시 판매 할 수 있습니다.

## **주요기능**

---

- 담당 파트
    - 관심 상품
        - 관심 상품으로 등록하면 관심 상품 목록 창에 나타나도록 구현
        - 하트 이미지 클릭 시 관심상품으로 등록 시 하트가 빨갛게 채워지고, 취소 시 비어있는 하트로 돌아오도록 구현
    - 배송 관리
        - 관리자 페이지에서 배송 상태를 확인하고 조정 할 수 있게 구현
- 메인화면
    - 메인페이지 요소 배치 조정, 메인페이지 상품 리스트 구현
    - 검색 기능 구현(Ajax를 통한 자동 완성 기능)
- 회원 가입 및 로그인
    - 업데이트 예정
- 상품 상세
    - 구매와 입찰 테이블에서 데이터를 가져와 최저가 노출 시켜줌.
    - 최근 거래가의 시세 그래프
- 관심 상품
    - 관심 상품으로 등록하면 관심 상품 목록 창에 나타나도록 구현
    - 하트 이미지 클릭 시 관심상품으로 등록 시 하트가 빨갛게 채워지고, 취소 시 비어있는 하트로 돌아오도록 구현
- 배송 관리
    - 관리자 페이지에서 배송 상태를 확인하고 조정 할 수 있게 구현
- 이벤트
    - 회원 가입시  뽑기이벤트를 통하여 당첨 시 쿠폰을 발급받을 수 있도록 구현

## **이미지 자료**
![Untitled](https://user-images.githubusercontent.com/125801596/233523540-be511781-12af-4334-912c-a5844ec49423.png)

![Untitled (1)](https://user-images.githubusercontent.com/125801596/233523553-b085806e-3507-4c92-a8d3-559cc763efe7.png)

![Untitled (2)](https://user-images.githubusercontent.com/125801596/233523557-accb7269-db95-40d3-a733-538da8964f7b.png)

![Untitled (3)](https://user-images.githubusercontent.com/125801596/233523562-cf1cd0ac-1c18-4c81-8692-1f24206f291a.png)

![Untitled (4)](https://user-images.githubusercontent.com/125801596/233523568-39d084cf-36a4-4863-aef4-512bcad9b51c.png)

![Untitled (5)](https://user-images.githubusercontent.com/125801596/233523572-b7dbb672-28b7-4843-bc90-f668f88c4560.png)

## **🔖DB 구성**


![Untitled (6)](https://user-images.githubusercontent.com/125801596/233523578-f308cb58-f3a3-4a7d-b6a8-55bca0e44aff.png)

## **🔄업데이트 내역**

---

- 0.1
    - 기본파일 업로드
- 0.2
    - 2023-04-10
    - 관심 상품 구현
- 0.3
    - 2023-04-20
    - 관리자 페이지에서 배송 상품 관리 구현
