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
<h3>Registered Users</h3>
<c:choose>
	<c:when test="${fn:length(users) gt 0}">
		<table border=1>
			<tr>
				<th>Email</th>
				<th>Type</th>
			</tr>
			<c:forEach var="user" items="${users}">
				<tr>
					<td><c:out value="${user.email}"/></td>
					<td>${user.type}</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise>No Users</c:otherwise>
</c:choose>
<mytags:footer/>

</body>
</html>
