<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이지슐랭 :: 내일의 맛보기, 이지슐랭</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    
    <!-- 퀵메뉴 스크롤 -->
    <script>
        $(document).ready(function(){
            var currentPosition = parseInt($(".quickMenu").css("top"));
            $(window).scroll(function() {
                var position = $(window).scrollTop(); 
                var topPosition = (position)+currentPosition-250;
              	if(topPosition <= 593) {
                    topPosition = 593;
                }
                $(".quickMenu").stop().animate({"top":topPosition+"px"},1500);
            });
        });
        
        // 회원등급안내팝업
        function callGrade() {
            window.open('/mypage/memberGrade', '_blank', 'width=450, height=330'); 
            return false;
        }
    </script>

    <!-- CSS -->
    <link href="/css/main.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
	<!-- 헤더 -->
    <c:import url="./header.jsp" />

    <!-- 메인 -->
    <div id="main">

        <!-- 섹션1 - 캐러셀 -->
        <div class="section1">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <div class="carousel">
                    <div class="carousel-item active section1">
                        <a href="#">
                            <img src="/img/main/carousel/carousel01.jpg" height="370" class="d-block w-100" alt="...">
                        </a>    
                    </div>
                    <div class="carousel-item section1">
                        <a href="#">
                            <img src="/img/main/carousel/carousel02.jpg" height="370" class="d-block w-100" alt="...">
                        </a>
                    </div>
                    <div class="carousel-item section1">
                        <a href="#">
                            <img src="/img/main/carousel/carousel03.jpg" height="370" class="d-block w-100" alt="...">
                        </a>    
                    </div>
                    <div class="carousel-item section1">
                        <a href="/goods/goodsNewList">
                            <img src="/img/main/carousel/carousel04.jpg" height="370" class="d-block w-100" alt="...">
                        </a>
                    </div>
                    <div class="carousel-item section1">
                        <a href="#">
                            <img src="/img/main/carousel/carousel05.jpg" height="370" class="d-block w-100" alt="...">
                        </a>    
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-target="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#demo" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                </button>
            </div> 
            
            <script>
                $(function(){
                    $('.carousel').carousel({
                        slideWidth: 600, //슬라이드 넓이
                        auto: true, //자동재생
                        speed: 700, //슬라이딩 속도
                        wrap: true, //순환
                        adaptiveHeight: false, //이미지 높이에 따라 슬라이드 높이 결정
                        touchEnabled: false, //터치 스와이프 사용 결정
                        controls: true, //Prev/Next 버튼 사용 여부
                        autoHover: true //마우스 올리면 일시 정지 
                    });
                });
            </script>    
            
        </div>

            <!-- 퀵메뉴 -->
            <!-- 최근 본 상품 구현 X -->
            <div class="quickMenu">
                <a href="#"><img src="/img/goods/bnr_quick.jpg" alt="퀵배송안내" width="80" height="auto"></a>
                <ul>
                    <li><a href="javascript:callGrade();">등급별 혜택</a></li> 
                    <li><a href="/customer/eventList.html?3">이벤트</a></li> 
                    <li><a href="/mypage/orderList.html?0">마이페이지</a></li>
                </ul>
            </div>

        <div class="container">
            
            <div class="row">
                <div class="col-12">
                    <!-- 섹션2 - 이지슐랭 추천상품 -->
                    <!-- 랜덤으로 뜨는 거 구현 X -->
                    <!-- 스와이프 버튼 크기 키우기 실패 -->
                    <!-- 장바구니 담기 기능 구현 X -->
                    <div class="section2">
                        <div class="sec2_1">
                            <p>이지슐랭 추천상품</p>
                        </div>
                        <div class="sec2_2">
                            <div class="swiper-container swiper1">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-1.jpg" width="250" height="320">    
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[앤쿡] 컴팩트 고등어 & 삼치(냉동)</p>
                                            </a>
                                            <p class="price1">15,900원</p>    
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-2.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[한애가] 담금초 매실 350ml</p>
                                            </a>
                                            <div>
                                                <span class="sale">29%</span>
                                                <span class="salePrice">20,590원</span>
                                            </div>
                                            <p class="price2">29,000원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-3.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[산베네데토] 탄산수 (500mL X 20병)</p>
                                            </a>
                                            <div>
                                                <span class="sale">13%</span>
                                                <span class="salePrice">31,130원</span>
                                            </div>
                                            <p class="price2">35,910원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-4.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[우리밀] 부침가루 & 튀김가루</p>
                                            </a>
                                            <p class="price1">3,000원</p>   
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-5.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[한일관 X 백년가게] 등심 불고기</p>
                                            </a>
                                            <div>
                                                <span class="sale">20%</span>
                                                <span class="salePrice">23,200원</span>
                                            </div>
                                            <p class="price2">29,000원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-7.jpg" width="249" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[선물세트] 송강당 들과 바람 머금은 꽃꿀</p>
                                            </a>
                                            <div>
                                                <span class="sale">14%</span>
                                                <span class="salePrice">30,100원</span>
                                            </div>
                                            <p class="price2">35,000원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-6.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[고메] 함박스테이크</p>
                                            </a>
                                            <div>
                                                <span class="sale">10%</span>
                                                <span class="salePrice">7,182원</span>
                                            </div>
                                            <p class="price2">7,980원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-8.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[종가집] 배추보쌈김치 400g</p>
                                            </a>
                                            <div>
                                                <span class="sale">7%</span>
                                                <span class="salePrice">5,780원</span>
                                            </div>
                                            <p class="price2">6,280원</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination swiper-pagination1"></div>
                                <div class="swiper-button-next"></div><!-- 다음 버튼 -->
                                <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
                                
                                <script type="text/javascript">
                                    var swiper1 = new Swiper('.swiper1', {
                                        loop : false, // 무한 반복

                                        navigation : { // 네비게이션
                                            nextEl : '.swiper-button-next', // 다음 버튼 클래스명
                                            prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
                                        },

                                        // Enable debugger
                                        debugger: true,

                                        slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
                                        spaceBetween : 10, // 슬라이드간 간격
                                        slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

                                        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
                                        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
                                        loopFillGroupWithBlank : true,
                                    });
                                </script>
                            </div>  
                            
                            <!-- 광고배너 -->
                            <div class="adBnr">
                                <div>
                                    <img src="/img/main/adBnr/sec2Bnr.jpg" alt="추천상품-배너" width="1085" height="140">
                                </div>        
                            </div>
                        </div>
                    </div>
                    
                    <!-- 새로왔어요! -->
                    <!-- 랜덤으로 뜨는 거 구현 X -->
                    <!-- 스와이프 버튼 크기 키우기 실패 -->
                    <!-- 장바구니 담기 기능 구현 X -->
                    <div class="section3">
                        <div class="sec3_1">
                            <p>새로왔어요!</p>
                        </div>
                        <div class="sec3_2">
                            <div class="swiper-container swiper2">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-1.jpg" width="250" height="320">    
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[앤쿡] 컴팩트 고등어 & 삼치(냉동)</p>
                                            </a>
                                            <p class="price1">15,900원</p>    
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-2.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[한애가] 담금초 매실 350ml</p>
                                            </a>
                                            <div>
                                                <span class="sale">29%</span>
                                                <span class="salePrice">20,590원</span>
                                            </div>
                                            <p class="price2">29,000원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-3.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[산베네데토] 탄산수 (500mL X 20병)</p>
                                            </a>
                                            <div>
                                                <span class="sale">13%</span>
                                                <span class="salePrice">31,130원</span>
                                            </div>
                                            <p class="price2">35,910원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-4.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[우리밀] 부침가루 & 튀김가루</p>
                                            </a>
                                            <p class="price1">3,000원</p>   
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-5.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[한일관 X 백년가게] 등심 불고기</p>
                                            </a>
                                            <div>
                                                <span class="sale">20%</span>
                                                <span class="salePrice">23,200원</span>
                                            </div>
                                            <p class="price2">29,000원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-7.jpg" width="249" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[선물세트] 송강당 들과 바람 머금은 꽃꿀</p>
                                            </a>
                                            <div>
                                                <span class="sale">14%</span>
                                                <span class="salePrice">30,100원</span>
                                            </div>
                                            <p class="price2">35,000원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-6.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[고메] 함박스테이크</p>
                                            </a>
                                            <div>
                                                <span class="sale">10%</span>
                                                <span class="salePrice">7,182원</span>
                                            </div>
                                            <p class="price2">7,980원</p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="goodsSwiperImg">
                                            <a href="/goods/goodsView">
                                                <img src="/img/main/section2/sec2-8.jpg" width="250" height="320">
                                                <img class="addCart" src="/img/main/cart1.png" alt="장바구니에 담기">
                                            </a>
                                        </div>
                                        <div class="goodsSwiperText">
                                            <a href="/goods/goodsView">
                                                <p>[종가집] 배추보쌈김치 400g</p>
                                            </a>
                                            <div>
                                                <span class="sale">7%</span>
                                                <span class="salePrice">5,780원</span>
                                            </div>
                                            <p class="price2">6,280원</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination swiper-pagination2"></div>
                                <div class="swiper-button-next"></div><!-- 다음 버튼 -->
                                <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
                                
                                <script type="text/javascript">
                                    var swiper1 = new Swiper('.swiper2', {
                                        loop : false, // 무한 반복

                                        navigation : { // 네비게이션
                                            nextEl : '.swiper-button-next', // 다음 버튼 클래스명
                                            prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
                                        },
                                        
                                        // Enable debugger
                                        debugger: true,

                                        slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
                                        spaceBetween : 10, // 슬라이드간 간격
                                        slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

                                        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
                                        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
                                        loopFillGroupWithBlank : true,
                                    });
                                </script>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    
    <!-- 푸터 -->
    <c:import url="./footer.jsp" />
</body>
</html>