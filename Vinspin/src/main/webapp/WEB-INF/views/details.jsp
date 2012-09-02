<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags"%>
<html>
<head>
<mytags:jquery />
<mytags:style />
</head>
<body>
<mytags:menu/>

<body>
	<div id="wrap">
		<header>
			<h1><span class="list-style-buttons"> 
              <strong dir="ltr">Wine Details</strong> <br>
		      <a href="#" id="gridview" class="switcher active"><img src="assets/images/account_active.png" alt="Grid"></a>
		      <a href="#" id="gridview" class="switcher active"><img src="assets/images/cellar_menu.png" alt="Grid"></a>
			  <a href="#" id="gridview" class="switcher active"><img src="assets/images/filter_menu.png" alt="Grid"></a>            
			  <a href="#" id="gridview" class="switcher active"><img src="assets/images/search_menu.png" alt="Grid"></a>
			  <a href="#" id="gridview" class="switcher active"><img src="assets/images/grid-view.png" alt="Grid"></a>
			  <a href="#" id="listview" class="switcher"><img src="assets/images/list-view-active.png" alt="Grid" class="grid"></a>
			  <strong dir="ltr">Logout</strong>
		    </span>
		  </h1>
	  </header> 
		<br />
	  <ul id="products" class="list clearfix">
			<!-- row 1 -->
			<li class="clearfix">
				<section class="left"> 
				  <p><a href="index2.html"><img src="assets/images/${item.image}" alt="default thumb" width="352" height="352" class="thumb"></a></p>
				  <h1>${item.name}</h1>
				  <h2>${item.shortDescription}</h2>
				  <p>&nbsp;</p>
				  <p><a href="index2.html"></a></p>
				  <blockquote>
				    <h1><img src="assets/images/rating_vinspin_all.png" width="187" height="30" alt="rating"></h1>
				  </blockquote>
				  <h4> Spin Score</h4>
				  <p>&nbsp;</p>
				  <h3><strong>Vintage</strong>: 2012</h3>
				  <h3><strong>Wine Type</strong>: Red Wine</h3>
				  <h3><strong>Varietal</strong>: Signature Wine</h3>
				  <h3><strong>Appellation</strong>: Napa Valley</h3>
				  <p><a href="index2.html"></a></p>
				  <p>&nbsp;</p>
				  <a href="index2.html"><a href="index2.html"><img src="assets/images/add-to-cart-btn.png" width="101" height="30" alt="add to menu"></a></a>
				  <h3>&nbsp;</h3>
					<p>&nbsp;</p>
			  </section>
		</li>
			
			<!-- row 2 -->
			<li class="clearfix alt">
				<section class="left">
				  <h3>&nbsp;</h3>
					<blockquote>
					  <blockquote>
					    <blockquote>
					      <blockquote>
					        <p><img src="assets/images/geo_location.png" width="30" height="30" alt="LOCATION"> 0.3 miles away<!-- TemplateBeginEditable name="EditRegion1" -->
					          <blockquote>
					            <h2>Whole Foods Market<br>
					              399 4th St. South SanFrancisco, CA<br>
				                </h2>
		                    </blockquote>
					        <!-- TemplateEndEditable -->
					        </p>
				          </blockquote>
				        </blockquote>
					  </blockquote>
					</blockquote>
              </section>
				
				<section class="right"><span class="darkview">
				<a href="javascript:void(0);" class="firstbtn"><img src="assets/images/read-more-btn.png" alt="Read More..."></a></span>
				</section>
			</li>
		<footer>
			&nbsp;
		</footer>
	</div>

<mytags:footer/>

</body>
</html>