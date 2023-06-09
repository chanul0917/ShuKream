<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--
	BIDS_IDX // 주문인덱스
	BIDS_SIZE_IDX //사이즈 인덱스
	BIDS_PRICE // 가격
	BIDS_REGDATE //등록일
	BIDS_UPDATE // 수정일
	BIDS_EXPIRATION //만료일
	BIDS_ORDER_STATE_IDX //사이즈 인덱스
	BIDS_MATCHED_DATE //매칭일
			BIDS_TOTAL_PRICE //토탈가격 <- 이건 왜있는건지 잘모르겠음(여러개 동시 주문 불가로알고있음)
			BIDS_ORDER_NUMBER // <- 이것도?
	BIDS_SHIP_IDX <- 배송정보인덱스
	BIDS_PRODUCT_ID <- 상품인덱스
	
	이 페이지에서 전제조건 : 
	구매입찰로 checkout까지 넘어온 경우 BIDS를 기준으로 상품 정보를 조회 해 와야함
	같이 가져와야 하는 정보 
	PRODUCT_ID(상품 인덱스와 맞는 상품 정보, ORDER_SIZE_IDX(사이즈인덱스와 맞는 사이즈 정보), 
	
	

 --%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextPath}/resources/css/checkout.css">

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="breadcrumb__text">
          <h4>Check Out</h4>
          <div class="breadcrumb__links">
            <a href="./index.html">Home</a> <a href="./shop.html">Shop</a>
            <span>Check Out</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
  <div class="container">
    <div class="checkout__form">
      <form action="${contextPath}/order/orderDetail.do" method="post">
        <div class="row">
          <div class="col-lg-7 col-md-6">
          <input type="hidden" name="product_id" value="${product.PRODUCT_ID}">
          <c:choose>
          	<c:when test="${type eq 'buy'}">
	            <h4 class="coupon__code">
					<input type="radio" id="bids" name="option" value="00" onchange="setDisplay()"  required="required">
					<label for="bids"><span style="font-size:24px;">구매입찰</span></label>
					<c:if test="${not empty buyAsks}">
					<input type="radio" id="check" name="option" value="10" onchange="setDisplay()"  checked="checked"  > 
					</c:if>
					<label for="check"><span style="font-size:24px;">즉시구매</span></label>
					<input type="hidden" name="type" value="buy">
					<input type="hidden" name="asks_idx" value="${buyAsks.ASKS_IDX}">
	            </h4>
				<div class="checkout__input">
					<div id="price" style="display: none;">
						<p style="font-size: 24px;">
						   	구매희망가격<span>*</span>
						 </p>
						<input type="text" class="ABprice" name="ABprice" placeholder="구매 희망가" style="color:black;"/>
					</div>
				</div>
			</c:when>
			<c:otherwise>
           		<h4 class="coupon__code">
					<input type="radio" id="asks" name="option" value="00" onchange="setDisplay()"  required="required" > 
					<label for="asks"><span style="font-size:24px;">판매입찰</span></label>
					<c:if test="${not empty sellBids}">
					<input type="radio" id="check" name="option" value="10" onchange="setDisplay()" checked="checked" > 
					<label for="check"><span style="font-size:24px;">즉시판매</span></label>
					</c:if>
					<input type="hidden" name="type" value="sell">
					<input type="hidden" name="bids_idx" value="${sellBids.BIDS_IDX}">
	            </h4>
				<div class="checkout__input">
					<div id="price"  style="display:none;">
						<p style="font-size: 24px;">
						   	판매희망가격<span>*</span>
						 </p>
						<input type="text" class="ABprice" name="ABprice" placeholder="판매 희망가" style="color:black;"/>
					</div>
				</div>
			</c:otherwise>
			
			</c:choose>
            <h4 class="checkout__title">주문 상세</h4>
            <div class="row">
              <div class="col-lg-8">
                <div class="checkout__input">
                  <p>
                    Name<span>*</span>
                  </p>
                  <input type="text" name="ship_name" value="김길동" required>
                </div>
              </div>
               <div class="col-lg-6">
                <div class="checkout__input">
                  <p>
                    Phone<span>*</span>
                  </p>
                  <input type="text" name="phone_number" value="01012341234" required>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>
                    Email<span>*</span>
                  </p>
                  <input type="text" name="user_id" value="test@test.com" required>
                </div>
              </div>
<%--              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>
                    Last Name<span>*</span>
                  </p>
                  <input type="text" name="last_name">
                </div>
              </div> --%>
            </div>
  <%--          <div class="checkout__input">
              <p>
                Country<span>*</span>
              </p>
              <input type="text">
            </div>  --%>
           
             <div class="checkout__input">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>            
              <p>
                	우편번호<span>*</span>
              </p>
              <input type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호" required value="13529">
            </div>
           
            <div class="checkout__input">
              <p>
                도로명/지번 주소<span>*</span>
              </p>
              <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" placeholder="도로명주소" required value="경기 성남시 분당구 판교역로 166"> 
              <input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" placeholder="지번주소" required value="경기 성남시 분당구 백현동 532">
            </div>
            <div class="checkout__input">
              <p>
                상세주소<span>*</span>
              </p>
              <input type="text" id="sample4_detailAddress" name="sample4_detailAddress" placeholder="상세주소" required value="12층">
            </div>
            <div class="checkout__input">
              <p>
               	참고항목
              </p>
              <input type="text" id="sample4_extraAddress" name="sample4_extraAddress" placeholder="참고항목" value=" (백현동)">
            <span id="guide" style="color:#999;display:none"></span>
            </div>
<!--             <div class="checkout__input__checkbox">
              <label for="acc"> Create an account? <input
                type="checkbox" id="acc"> <span
                class="checkmark"></span>
              </label>
              <p>Create an account by entering the information
                below. If you are a returning customer please login at
                the top of the page</p>
            </div>
            <div class="checkout__input">
              <p>
                Account Password<span>*</span>
              </p>
              <input type="text">
            </div>
            <div class="checkout__input__checkbox">
              <label for="diff-acc"> Note about your order, e.g,
                special noe for delivery <input type="checkbox"
                id="diff-acc"> <span class="checkmark"></span>
              </label>
            </div>
            <div class="checkout__input">
              <p>
                Order notes<span>*</span>
              </p>
              <input type="text"
                placeholder="Notes about your order, e.g. special notes for delivery.">
            </div> -->
          </div>
          <div class="col-lg-5 col-md-6">
            <div class="checkout__order">
              <h4 class="order__title">Your order</h4>
              <div class="checkout__order__products">
                <h5>Product</h5> <%-- <span>Total</span> --%>
              </div>
              <ul class="checkout__total__products">
                <li>${product.PRODUCT_NAME_EN}<br>
                	${product.PRODUCT_NAME_KOR}
                 </li>
               	<c:choose>
               		<c:when test="${buyAsks eq null && sellBids eq null}"> 
		                <li>SIZE : ${size}</li>
		                <input type="hidden" name="size" value="${size}">
		            </c:when>
		            <c:otherwise>  
        		        <c:if test="${sellBids eq null}">
		                	<li>SIZE : ${buyAsks.ASKS_SIZE_IDX}</li>
		                	<input type="hidden" name="size" value="${buyAsks.ASKS_SIZE_IDX}">
		                </c:if>  
		                <c:if test="${buyAsks eq null}">
		                	<li>SIZE : ${sellBids.BIDS_SIZE_IDX}</li>
		                	<input type="hidden" name="size" value="${sellBids.BIDS_SIZE_IDX}">
		                </c:if>
	                </c:otherwise>
                </c:choose>
<%--                 <li>02. German chocolate <span>$ 170.0</span></li>
                <li>03. Sweet autumn <span>$ 170.0</span></li>
                <li>04. Cluten free mini dozen <span>$ 110.0</span></li>--%>
              </ul>
              <ul class="checkout__total__all">
              <c:choose>
              	<c:when test="${buyAsks eq null && sellBids eq null}">
              		<fmt:formatNumber var="formatNumPrice" value="${product.PRODUCT_PRICE}"/>
					<li >Total <span id="totalPrice">default Price : ${formatNumPrice}원</span></li>
                </c:when>
               <c:otherwise>
               		<c:if test="${sellBids eq null}">
					<fmt:formatNumber var="formatNumPrice" value="${buyAsks.ASKS_PRICE}"/>
                	<li >Total <span id="totalPrice">${formatNumPrice}원</span></li>
                	</c:if>
                	<c:if test="${buyAsks eq null}">
	                	<fmt:formatNumber var="formatNumPrice" value="${sellBids.BIDS_PRICE}"/>
	                	<li >Total <span id="totalPrice">${formatNumPrice}원</span></li>
                	</c:if>
               </c:otherwise>
               </c:choose>
              </ul>
              <!-- <div class="checkout__input__checkbox">
                <label for="acc-or"> Create an account? <input
                  type="checkbox" id="acc-or"> <span
                  class="checkmark"></span>
                </label>
              </div>
              <p>Lorem ipsum dolor sit amet, consectetur adip elit,
                sed do eiusmod tempor incididunt ut labore et dolore
                magna aliqua.</p>
              <div class="checkout__input__checkbox">
                <label for="payment"> Check Payment <input
                  type="checkbox" id="payment"> <span
                  class="checkmark"></span>
                </label>
              </div>
              <div class="checkout__input__checkbox">
                <label for="paypal"> Paypal <input
                  type="checkbox" id="paypal"> <span
                  class="checkmark"></span>
                </label>
              </div> -->
              <button type="submit" class="site-btn">PLACE
                ORDER</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
<!-- Checkout Section End -->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<script>   
    
    //구매입찰가 온오프
function setDisplay(){
        if($('input:radio[id=check]').is(':checked')){
            $('#price').hide();
        }else{
            $('#price').show();
        }
    }
	$(".ABprice").focusout(function() {
		$("#totalPrice").text(addComma($(".ABprice").val())+'원');	
	});
    
	
	//천단위 ,
 function addComma(value){
      value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
      return value; 
  }
     
 </script>
