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
<h3>Create User</h3>

<form:form method="post" action="createUser.htm" commandName="userInfo">
	<table align="center">
	      <tr>
	          <td><form:label path="user.email"><spring:message code="label.email"/></form:label></td>
	          <td><form:input path="user.email" /></td>
	      </tr>
	      <tr>
	          <td><form:label path="user.password"><spring:message code="label.password"/></form:label></td>
	          <td><form:password path="user.password"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="user.type"><spring:message code="label.userType"/></form:label></td>
	          <td><form:input path="user.type"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.firstName"><spring:message code="label.firstName"/></form:label></td>
	          <td><form:input path="userDetails.firstName"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.lastName"><spring:message code="label.lastName"/></form:label></td>
	          <td><form:input path="userDetails.lastName"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.age"><spring:message code="label.age"/></form:label></td>
	          <td><form:input path="userDetails.age"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.address"><spring:message code="label.address"/></form:label></td>
	          <td><form:input path="userDetails.address"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.city"><spring:message code="label.city"/></form:label></td>
	          <td><form:input path="userDetails.city"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.country"><spring:message code="label.country"/></form:label></td>
	          <td><form:input path="userDetails.country"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.mobile"><spring:message code="label.mobile"/></form:label></td>
	          <td><form:input path="userDetails.mobile"/></td>
	      </tr>
	      <tr>
	          <td><form:label path="userDetails.zipCode"><spring:message code="label.zipCode"/></form:label></td>
	          <td><form:input path="userDetails.zipCode"/></td>
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
