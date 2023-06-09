<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<style>

#shipping_wrapper{

/*     border : 1px solid black; */
	
	position : relative;
	display : flex;
	max-width : 1920px;
	width : 100%;
	height: 1000px;
	margin : 0 auto;


}

#shipping_box{

/*     border: 1px dotted black; */
    
	position: relative;
    display: flex;
    width: 100%;
    height: 100%;
    margin: 0 auto;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: center;
    border-radius: 20px;
    box-shadow: 0 0 30px 10px;
    padding : 0;
    
}	

#bids_box{

/* 	border : 1px solid black; */

    position: relative;
    display: flex;
    height: 50%;
    width: 100%;
    margin: 0 auto;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: flex-start;
    border-radius: 20px;

}

.bids_title_name{

	border : 1px dotted darkgray;

    position: relative;
    display: flex;
    height: 100%;
    width: calc(100%/6);
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    align-items: center;
    font-size : 25px;
    border-radius : 5px;
    font-weight : bold;

}

.bids_asks_box_title{

	border : 1px solid black;
	
     position: relative;
    display: flex;
    height: 70px;
    width: 100%;
    margin: 0 auto;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: flex-start;
    color : white;
    border-radius: 20px;
    
}

.bids_asks_title{
	
	border: 1px solid black;
	
    position: relative;
    display: flex;
    height: 70px;
    width: 100%;
    margin: 0 auto;
    text-align: center;
    justify-content: center;
    flex-wrap: nowrap;
    flex-direction: column;
    font-weight: bold;
    font-size: 30px;
    background: black;
    border-radius: 15px;
    
}

#bids_title{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100px;
    width: 100%;
    margin: 5px auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    border-radius: 5px;

}

#bids_content_title_name1{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 100px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;

}

#bids_content_title_name2{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 150px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;
    border: 1px solid black;

}

#bids_content_title_name3{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 420px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;

}

#bids_content_title_name4{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 100px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;

}

#bids_content_title_name5{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 80px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;

}

#bids_content_title_name6{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 200px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;
    border: 1px solid black;

}

#bids_content_title_name7{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 105px;
    margin: 1px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    background: black;
    color: white;
    font-weight: bold;
    font-size: 20px;

}

#bids_content_title{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100px;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
	justify-content: flex-start;
    left: 0;
    top: 0;
    align-items: center;
    text-align: center;
    border-radius: 10px;

}

#bids_content{

/* 	border : 1px solid black; */

	position: relative;
    display: flex;
    height: 100%;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    left: 0;
    top: 0;
    align-items: flex-start;
	border-radius: 10px;
}

.bids_input{

/* 	border : 1px solid black; */

    position: relative;
    display: flex;
    height: 100%;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    left: 0;
    top: 0;
    align-items: flex-start;
    border-radius: 10px;

}

#bids_content_name1{

    border: 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 100px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;


}

#bids_content_name2{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 150px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    align-items: center;
   	border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#bids_content_name3{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 410px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#bids_content_name4{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 100px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#bids_content_name5{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 70px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#bids_content_name6{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 200px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#bids_content_name7{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 100px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

.bids_button{

	border : 1px solid blue;

	position: relative;
    display: flex;
    height: 65px;
    width: 100px;
    margin: 0 auto;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: center;
    top:0;
    left: 0;

}

.bids_btn{

	border : 1px solid blue;

    position: relative;
    display: flex;
    height: 100%;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;

}

#asks_box{

/* 	border : 1px solid black; */

    position: relative;
    display: flex;
    height: 50%;
    width: 100%;
    margin: 0 auto;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: flex-start;
    align-items: center;
    border-radius: 20px;

}

#asks_title{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100px;
    width: 100%;
    margin: 5px auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    border-radius: 5px;

}

.asks_title_name{

	border : 1px dotted darkgray;

    position: relative;
    display: flex;
    height: 100%;
    width: calc(100%/6);
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    align-items: center;
    font-size: 25px;
    border-radius: 5px;
    font-weight: bold;
    margin: 1px;

}

#asks_content_title{

    border: 1px solid black;
    
    position: relative;
    display: flex;
    height: 100px;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    left: 0;
    top: 0;
    align-items: center;
    text-align: center;
    border-radius: 10px;
}

#asks_content_title_name1{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 100px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    color: white;
    font-weight: bold;
    font-size: 20px;
    margin : 1px;
    background : black;
    
}

#asks_content_title_name2{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 150;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    color: white;
    font-weight: bold;
    font-size: 20px;
    margin : 1px;
    background : black;
    
}

#asks_content_title_name3{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 600;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    color: white;
    font-weight: bold;
    font-size: 20px;
    margin : 1px;
    background : black;
    
}

#asks_content_title_name4{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 100;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    color: white;
    font-weight: bold;
    font-size: 20px;
    margin : 1px;
    background : black;
    
}

#asks_content_title_name5{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 70;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    color: white;
    font-weight: bold;
    font-size: 20px;
    margin : 1px;
    background : black;
    
}

#asks_content_title_name6{

	border : 1px solid black;

    position: relative;
    display: flex;
    height: 100%;
    width: 200;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    color: white;
    font-weight: bold;
    font-size: 20px;
    margin : 1px;
    background : black;
    
}

#asks_content{

/* 	border : 1px solid black; */

	position: relative;
    display: flex;
    height: 100%;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    left: 0;
    top: 0;
    align-items: flex-start;
    border-radius: 10px;

}

.asks_input{

/* 	border : 1px solid black; */

    position: relative;
    display: flex;
    height: 100%;
    width: 100%;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    left: 0;
    top: 0;
    overflow-y: auto;
    border-radius: 10px;
}

#asks_content_name1{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 100;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#asks_content_name2{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 150px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
  	align-items: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#asks_content_name3{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 530px;
    margin: 0 auto;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#asks_content_name4{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 100px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#asks_content_name5{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 70px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}

#asks_content_name6{

	border : 1px dotted black;

	position: relative;
    display: flex;
    height: 30%;
    width: 200px;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: center;
    text-align: center;
    border-radius: 5px;
    font-size: 20px;
    margin: 2px auto 2px auto;

}
</style>

<!-- Css Styles 적용 -->
<link rel="stylesheet" href="${contextPath}/resources/css/member/shipping.css" type="text/css">

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-blog set-bg"
  data-setbg="${contextPath}/resources/img/member/shipping.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2>배송 현황</h2>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Event Section Begin -->
<section id="shipping_wrapper" class="mypage spad">
  <div id="shipping_box" class="container">
  
  	<div id="bids_box">
  		<div class="bids_asks_box_title">
  			<a class="bids_asks_title">구매 현황</a>
  		</div>
  		<div id="bids_title">
  			<a style="color : red" class="bids_title_name">구매 입찰중</a>
  			<a class="bids_title_name">▶</a>
  			<a style="color : orange" class="bids_title_name">입고&검수중</a>
  			<a class="bids_title_name">▶</a>
  			<a style="color : yellow" class="bids_title_name">배송중</a>
  			<a class="bids_title_name">▶</a>
  			<a style="color : green" class="bids_title_name">배송 완료</a>  			
  		</div>
  		<div id="bids_content_title">
  				<input type="text" id="bids_content_title_name1" value="상태" />
  				<input type="text" id="bids_content_title_name2" value="제품사진" />
  				<input type="text" id="bids_content_title_name3" value="제품명" />
  				<input type="text" id="bids_content_title_name4" value="사이즈" />
  				<input type="text" id="bids_content_title_name5" value="수량" />
  				<input type="text" id="bids_content_title_name6" value="입찰 가격" />
  				<input type="text" id="bids_content_title_name7" value="확정" />
  		</div>
  		<div id="bids_content">
  			<div class="bids_input">
  				<input type="text" id="bids_content_name1" value="1" />
  				<input type="image" id="bids_content_name2" value="2" />
  				<input type="text" id="bids_content_name3" value="3" />
  				<input type="text" id="bids_content_name4" value="4" />
  				<input type="text" id="bids_content_name5" value="5" />
  				<input type="text" id="bids_content_name6" value="6" />
  				<input type="button" id="bids_content_name7" value="구매 확정" />
  			</div>
  		</div>
  	</div>
  	
	<div id="asks_box">
	  	<div class="bids_asks_box_title">
  			<a class="bids_asks_title">판매 현황</a>
  		</div>
  		<div id="asks_title">
  			<a style="color : red" class="asks_title_name">판매 입찰중</a>
  			<a class="asks_title_name">▶</a>
  			<a style="color : orange" class="asks_title_name">입고&검수중</a>
  			<a class="asks_title_name">▶</a>
  			<a style="color : yellow" class="asks_title_name">배송중</a>
  			<a class="asks_title_name">▶</a>
  			<a style="color : green" class="asks_title_name">배송 완료</a>  			
  		</div>
  		  		<div id="asks_content_title">
  				<input type="text" id="asks_content_title_name1" value="상태" />
  				<input type="text" id="asks_content_title_name2" value="제품사진" />
  				<input type="text" id="asks_content_title_name3" value="제품명" />
  				<input type="text" id="asks_content_title_name4" value="사이즈" />
  				<input type="text" id="asks_content_title_name5" value="수량" />
  				<input type="text" id="asks_content_title_name6" value="입찰 가격" />
  		</div>
  		<div id="asks_content">
  			<div class="asks_input">
  				<input type="text" id="asks_content_name1" value="1" />
  				<input type="image" id="asks_content_name2" value="2" />
  				<input type="text" id="asks_content_name3" value="3" />
  				<input type="text" id="asks_content_name4" value="4" />
  				<input type="text" id="asks_content_name5" value="5" />
  				<input type="text" id="asks_content_name6" value="6" />
  			</div>
  		</div>
  	</div>
	

	
	
  </div>
</section>
<!-- Event Section End -->
