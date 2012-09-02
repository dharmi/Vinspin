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
<h3>Registered items</h3>
<c:choose>
	<c:when test="${fn:length(items) gt 0}">
		<table border=1>
			<tr>
				<th>Name</th>
				<th>Short Description</th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					<td><c:out value="${item.name}"/></td>
					<td>${item.shortDescription}</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise>No items</c:otherwise>
</c:choose>
<mytags:footer/>

</body>
</html>
