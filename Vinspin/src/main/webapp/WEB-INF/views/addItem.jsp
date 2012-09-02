<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags"%>

<html>
<head>
<mytags:jquery />
<mytags:style />
</head>
<body>
<mytags:menu/>
<h3>Add Item Listing</h3>

<form:form method="post" action="addItem.htm" commandName="item">
	<table align="center">

	      <tr>
	          <td><form:label path="name"><spring:message code="label.itemName"/></form:label></td>
	          <td><form:input path="name"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="shortDescription"><spring:message code="label.itemShortDescription"/></form:label></td>
	          <td><form:input path="shortDescription"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="description"><spring:message code="label.itemDescription"/></form:label></td>
	          <td><form:input path="description"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="image"><spring:message code="label.itemImageName"/></form:label></td>
	          <td><form:input path="image"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="rating"><spring:message code="label.itemRating"/></form:label></td>
	          <td><form:input path="rating"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="comments"><spring:message code="label.itemComments"/></form:label></td>
	          <td><form:input path="comments"/></td>
	      </tr>

	      <tr align="center">
	          <td colspan="2" align="center">
	              <input type="submit" value="<spring:message code="label.signIn"/>"/>
	          </td>
	      </tr>
	</table>
</form:form>
<mytags:footer/>
</body>
</html>
