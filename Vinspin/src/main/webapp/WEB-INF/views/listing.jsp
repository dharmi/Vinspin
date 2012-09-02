<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags"%>
<html>
<head>
<mytags:jquery />
<mytags:style />
</head>
<body>
<mytags:vinspinMenu/>

    <div class="grid" id="wrap">
		<header>
		      <h1><span class="list-style-buttons"> 
		        <strong dir="ltr">Wine Listing</strong> <br>
		        <a href="#" id="account" class="switcher active"><img src="assets/images/account_active.png" alt="Grid"></a>
		        <a href="#" id="mycellar" class="switcher active"><img src="assets/images/cellar_menu.png" alt="Grid"></a>
		        <a href="#" id="filter" class="switcher active"><img src="assets/images/filter_menu.png" alt="Grid"></a>            
		        <a href="#" id="search_view" class="switcher active"><img src="assets/images/search_menu.png" alt="Grid"></a>
		        <a href="#" id="gridview" class="switcher active"><img src="assets/images/grid-view.png" alt="Grid"></a>
		        <a href="#" id="listview" class="switcher"><img src="assets/images/list-view-active.png" alt="Grid" class="grid"></a>
		        <a href="logout.htm" id="listview" class="switcher"><img src="assets/images/bt_logout.jpg" alt="Grid" class="grid"></a>
		      </span>
		    </h1>
		    <h1>&nbsp;</h1>
		</header>
		
		<c:choose>
			<c:when test="${fn:length(items) gt 0}">
				<c:forEach var="item" items="${items}">
					<ul id="products" class="list clearfix">	
			            <li class="clearfix alt">
			                <section class="left">
			                    <a href="details.htm?itemid=${item.id}"><img src="assets/images/${item.image}" alt="default thumb" width="150" height="150" class="thumb"></a>
			                    <h3><img src="assets/images/rating_vinspin_all.png" width="150" height="24" alt="rating"></h3>
			                    <p><b>${item.name}</b><br/>
			                    ${item.shortDescription}<br/>
			                    Comments: ${item.comments}</p>
			                </section>
			                
			                <section class="right"><span class="darkview">
			                <a href="javascript:void(0);" class="firstbtn"><img src="assets/images/read-more-btn.png" alt="${item.shortDescription}"></a></span>
			                </section>
			            </li>
			        </ul>
		        </c:forEach>
			</c:when>
			<c:otherwise>No items</c:otherwise>
		</c:choose>

    </div>
    
<mytags:footer/>

</body>
</html>
