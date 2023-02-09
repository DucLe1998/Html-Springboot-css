<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style type="text/css">
	#afocus {
		font-size: 14px;
		text-decoration: none;
		padding: 0px 10px 2px 10px;
	}

	#afocus:focus {
		color: red;
	}
</style>
<div class="row" style="margin-top: 150px">
	<!-- body -->
	<div class="row">
		<div class="col-3">
			<div class="flex-shrink-0 p-3" style="width: 270px;">
				<a href="/Assignment_Java4_SOF3011/admin/products/index"
					class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
					<svg class="bi me-2" width="55" height="24"></svg> <span class="fs-5 fw-semibold">Product</span>
				</a>
				<ul class="list-unstyled ps-0">
					<li class="mb-1">					
						<a href="/Assignment_Java4_SOF3011/layout/index">
							<button class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#home-collapse"
							aria-expanded="false">Home</button>
						</a>			
					</li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#dashboard-collapse"
							aria-expanded="false">Shirt <i class="bi bi-chevron-down"></i></button>
						<div class="collapse" id="dashboard-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<c:forEach var="ao" items="${ shirt }">
									<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">${ ao.ten }</a></li>
								</c:forEach>	
							</ul>
						</div>
					</li>
					
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#orders-collapse"
							aria-expanded="false">Trousers <i class="bi bi-chevron-down"></i></button>
						<div class="collapse" id="orders-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<c:forEach var="quan" items="${ trousers }">
									<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">${ quan.ten }</a></li>
								</c:forEach>	
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<a href="/Assignment_Java4_SOF3011/admin/products/create">					
							<button class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#admin-collapse"
							aria-expanded="false">Admin</button>
						</a>			
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#account-collapse"
							aria-expanded="false">Account <i class="bi bi-chevron-down"></i></button>
						<div class="collapse" id="account-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">New...</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">Profile</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">Settings</a></li>
								<li style="padding: 5px 0px; padding-left: 15px"><a href="#" class="link-dark rounded" id="afocus">Sign out</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-9">
			<p>Category show in here</p>
			<div class="row">
				<div class="col">
					<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

						<!-- Product 1 -->

						<div class="product-item men">
							<div class="product discount product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_1.png" alt="">
								</div>
								<div class="favorite favorite_left"></div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
									<div class="product_price">$520.00<span>$590.00</span></div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 2 -->

						<div class="product-item women">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_2.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_bubble product_bubble_left product_bubble_green d-flex flex-column align-items-center"><span>new</span></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>
									<div class="product_price">$610.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 3 -->

						<div class="product-item women">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_3.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>
									<div class="product_price">$120.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 4 -->

						<div class="product-item accessories">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_4.png" alt="">
								</div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
								<div class="favorite favorite_left"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>
									<div class="product_price">$410.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 5 -->

						<div class="product-item women men">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_5.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>
									<div class="product_price">$180.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 6 -->

						<div class="product-item accessories">
							<div class="product discount product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_6.png" alt="">
								</div>
								<div class="favorite favorite_left"></div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>-$20</span></div>
								<div class="product_info">
									<h6 class="product_name"><a href="#single.html">Fujifilm X100T 16 MP Digital Camera (Silver)</a></h6>
									<div class="product_price">$520.00<span>$590.00</span></div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 7 -->

						<div class="product-item women">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_7.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch FHD Monitor</a></h6>
									<div class="product_price">$610.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 8 -->

						<div class="product-item accessories">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_8.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout Edition</a></h6>
									<div class="product_price">$120.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 9 -->

						<div class="product-item men">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_9.png" alt="">
								</div>
								<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center"><span>sale</span></div>
								<div class="favorite favorite_left"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal Label Printer</a></h6>
									<div class="product_price">$410.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>

						<!-- Product 10 -->

						<div class="product-item men">
							<div class="product product_filter">
								<div class="product_image">
									<img src="${ pageContext.request.contextPath }/images/product_10.png" alt="">
								</div>
								<div class="favorite"></div>
								<div class="product_info">
									<h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold & Grey</a></h6>
									<div class="product_price">$180.00</div>
								</div>
							</div>
							<div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

