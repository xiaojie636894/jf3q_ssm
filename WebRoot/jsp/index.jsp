<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>花店</title>
<%@ include file="common.jsp"%>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "templatemo_menu", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})

	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = '';
		else if (field.value == '')
			field.value = field.defaultValue;
	}
</script>


</head>

<body>

	<div id="templatemo_wrapper_h">
		<div id="templatemo_header_wh">
			<div id="templatemo_header" class="header_home">
				<div id="site_title">
					<a href="http://sc.chinaz.com" rel="nofollow">Free CSS
						Templates</a>
				</div>
				<div id="templatemo_menu" class="ddsmoothmenu">
					<ul>
						<li><a href="index.html" class="selected">主页</a></li>
						<li><a href="about.html">关于</a></li>
						<li><a href="products.html">产品</a>
							<ul>
								<li><a href="http://sc.chinaz.com/?page/1" rel="nofollow">Sub
										Page One</a></li>
								<li><a href="http://sc.chinaz.com/?page/2" rel="nofollow">Sub
										Page Two</a></li>
								<li><a href="http://sc.chinaz.com/?page/3" rel="nofollow">Sub
										Page Three</a></li>
								<li><a href="http://sc.chinaz.com/?page/4" rel="nofollow">Sub
										Page Four</a></li>
								<li><a href="http://sc.chinaz.com/?page/5" rel="nofollow">Sub
										Page Five</a></li>
							</ul></li>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="faqs.html">FAQs</a></li>
					</ul>
					<div id="templatemo_search">
						<form action="#" method="get">
							<input type="text" value="Site Search" name="keyword"
								id="keyword" title="keyword" onfocus="clearText(this)"
								onblur="clearText(this)" class="txt_field" /> <input
								type="submit" name="Search" value="" alt="Search"
								id="searchbutton" title="Search" class="sub_btn" />
						</form>
					</div>
					<br style="clear: left" />
				</div>
				<a href="http://sc.chinaz.com" title="请单击此处" class="site_repeat"
					target="_blank"><img src="${ctx}/images/top_repeat.png"
					title="请单击此处" alt="请单击此处" /></a>
				<!-- end of templatemo_menu -->

				<div class="slider-wrapper theme-orman">
					<div class="ribbon"></div>
					<div id="slider" class="nivoSlider">
						<img src="${ctx}/images/portfolio/01.jpg" alt="slider image 1" />
						<a href="http://sc.chinaz.com/?page/1" rel="nofollow"> <img
							src="${ctx}/images/portfolio/02.jpg" alt="slider image 2"
							title="This is an example of a caption" />
						</a> <img src="${ctx}/images/portfolio/03.jpg" alt="slider image 3" />
						<img src="${ctx}/images/portfolio/04.jpg" alt="slider image 4"
							title="#htmlcaption" /> <img
							src="${ctx}/images/portfolio/05.jpg" alt="slider image 5"
							title="#htmlcaption" />
					</div>
					<div id="htmlcaption" class="nivo-html-caption">
						<strong>Example</strong> caption with <a
							href="http://sc.chinaz.com" rel="nofollow">a credit link</a> for
						<em>this slider</em>.
					</div>
				</div>
				<script type="text/javascript">
					$(window).load(function() {
						$('#slider').nivoSlider({
							controlNav : false
						});
					});
				</script>
			</div>
			<!-- END of header -->
		</div>
		<!-- END of header wrapper -->
		<div id="templatemo_main_wrapper">
			<div id="templatemo_main">
				<div id="sidebar" class="left">
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>分类</h3>
						<div class="content">
							<p>
								<h4>鲜花用途</h4>
								<a href="#">爱情</a>/
								<a href="#">友情</a>/
								<a href="#">友情</a>/
								<a href="#">亲情</a>/
								<a href="#">师生情</a>/
								<a href="#">探病</a>/
								<a href="#">道歉</a>/
								<a href="#">祝贺</a>/
								<a href="#">婚亲</a>/
								<a href="#">商务</a>
							</p>
							<p>  
								<h4>鲜花素材</h4>   
								<a href="#">玫瑰</a>/
								<a href="#">康乃馨</a>/
								<a href="#">郁金香</a>/
								<a href="#">百合</a>/
								<a href="#">扶郎</a>/
								<a href="#">马蹄莲</a>/
								<a href="#">向日葵</a>
							</p>      
							<p>   
								<h4>鲜花类别</h4>    
								<a href="#">花束</a>/
								<a href="#">花盒</a>/
								<a href="#">瓶花</a>/
								<a href="#">精品鲜花</a>/
								<a href="#">果篮</a>/
								<a href="#">桌面花篮</a>/
								<a href="#">开业花蓝</a>
							</p>  	
							
							<p>  
								<h4>经典套餐</h4>    
								<a href="#">经典花盒</a>/
								<a href="#">巨型玫瑰</a>/
								<a href="#">薰衣草</a>
							</p>
						</div>
					</div>
					<div class="sidebar_box">
						<span class="bottom"></span>
						<h3>Weekly Special</h3>
						<div class="content special">
							<img src="${ctx}/images/templatemo_image_01.jpg" alt="Flowers" />
							<a href="#">Citrus Burst Bouquet</a>
							<p>
								Price: <span class="price normal_price">$160</span>&nbsp;&nbsp;
								<span class="price special_price">$100</span>
							</p>
						</div>
					</div>
				</div>

				<div id="content" class="right">
					<h2>Welcome to Floral Shop</h2>
					<p>
						Floral Shop is a free template provided by <a
							href="http://sc.chinaz.com" rel="nofollow">templatemo</a>. Sed in
						suscipit risus, eget consectetur justo. Praesent lacinia, nisi
						quis commodo consectetur, diam magna laoreet felis, a pulvinar
						mauris enim in felis. Phasellus in mauris velit. In pellentesque
						massa in nisl auctor pellentesque. Donec fermentum convallis
						purus, id luctus nulla tempus in. Aliquam diam nibh, consectetur
						quis fringilla facilisis, egestas sed odio. Validate <a
							href="http://sc.chinaz.com/??check?uri=referer" rel="nofollow"><strong>XHTML</strong></a>
						&amp; <a href="http://sc.chinaz.com/??css-validator/check/referer"
							rel="nofollow"><strong>CSS</strong></a>.
					</p>

					<div class="product_box">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/01.jpg" alt="floral set 1" /></a>
						<h3>Ut eu feugiat</h3>
						<p class="product_price">$240</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>
					<div class="product_box">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/02.jpg" alt="flowers 2" /></a>
						<h3>Donec Est Nisi</h3>
						<p class="product_price">$160</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>
					<div class="product_box">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/03.jpg" alt="floral 3" /></a>
						<h3>Tristique Vitae</h3>
						<p class="product_price">$140</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>
					<div class="product_box no_margin_right">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/04.jpg" alt="flowers 4" /></a>
						<h3>Hendrerit Eu</h3>
						<p class="product_price">$320</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>

					<div class="product_box">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/05.jpg" alt="floral set 5" /></a>
						<h3>Tincidunt Nisi</h3>
						<p class="product_price">$150</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>
					<div class="product_box">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/07.jpg" alt="flowers 7" /></a>
						<h3>Curabitur et turpis</h3>
						<p class="product_price">$110</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>
					<div class="product_box">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/06.jpg" alt="flower set 6" /></a>
						<h3>Mauris consectetur</h3>
						<p class="product_price">$130</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>
					<div class="product_box no_margin_right">
						<a href="productdetail.html"><img
							src="${ctx}/images/product/08.jpg" alt="floral 8" /></a>
						<h3>Proin volutpat</h3>
						<p class="product_price">$170</p>
						<p class="add_to_cart">
							<a href="productdetail.html">Detail</a> <a
								href="shoppingcart.html">Add to Cart</a>
						</p>
					</div>

					<div class="blank_box">
						<a href="#"><img src="${ctx}/images/free_shipping.jpg"
							alt="Free Shipping" /></a>
					</div>
				</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of main -->
		</div>
		<!-- END of main wrapper -->

		<div id="templatemo_footer_wrapper">
			<div id="templatemo_footer">
				<div class="footer_left">
					<a href="#"><img
						src="${ctx}/images/1311260370_paypal-straight.png" alt="Paypal" /></a>
					<a href="#"><img
						src="${ctx}/images/1311260374_mastercard-straight.png"
						alt="Master" /></a> <a href="#"><img
						src="${ctx}/images/1311260374_visa-straight.png" alt="Visa" /></a>
				</div>
				<div class="footer_right">
					<p>
						Copyright &copy; 2014.Company name All rights reserved.<a
							target="_blank" href="http://sc.chinaz.com/?moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
					</p>
				</div>
				<div class="cleaner"></div>
			</div>
			<!-- END of footer -->
		</div>
		<!-- END of footer wrapper -->
	</div>

</body>

<div style="display: none">
	<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
		language='JavaScript' charset='utf-8'></script>
</div>
</html>
