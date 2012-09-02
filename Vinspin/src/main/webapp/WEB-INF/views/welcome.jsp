<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML lang=en>
  <HEAD>
    <TITLE>Vinspin</TITLE>
    <!-- stylesheets -->
    <link rel="stylesheet" href="assets/stylesheets/application.css" type="text/css" media="all" />
    <script src="assets/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script src="assets/javascripts/application.js" type="text/javascript"></script>
    <style type="text/css">body { background-image: url(assets/images/bg.jpg); background-repeat: repeat; }</style>
    <SCRIPT type=text/javascript>function clearForm(form) 	 { 		                       	
    	$(form).children('input, select, textarea').val(''); 		                       	
    	$(form).children('input[type=radio], input[type=checkbox]').each(function(){ 			                       		
    		this.checked = false; 			 // or 			                       		
    		$(this).attr('checked', false); 		                       		
    		}); 	                      	
    	}</SCRIPT>
  </HEAD>
  <BODY>
    <!-- Panel -->
    <DIV id=toppanel>
      <DIV id=panel>
        <DIV class="content clearfix">
          <DIV class=left>
            <H1>Welcome to VinSpin</H1>
          </DIV>
          <DIV class=left>
            <!-- Login Form -->
            <form:form method="post" action="login.htm" commandName="login">
              <H1>Sign-In!</H1>
              <form:label path="email"><spring:message code="label.email"/></form:label>
              <form:input path="email" />
              <form:label path="password"><spring:message code="label.password"/></form:label>
              <form:password path="password"/>
              <DIV class=clear></DIV>
              <INPUT class=bt_login value=Login type=submit name=submit>
              <INPUT class=bt_login onclick="clearForm('#login');" value=Clear type=button name=Clear>
            </form:form>
           </DIV>
         </DIV>
      </DIV>
      <!-- /login -->
      <!-- The tab on top -->
      <DIV class=tab>
        <UL class=login>
          <LI class=left></LI>
          <LI>Hello Guest!</LI>
          <LI class=sep>|</LI>
          <LI id=toggle>
            <A id=open class=open href="#">Log In</A>
            <A style="DISPLAY: none" id=close class=close href="#">Close Panel</A>
          </LI>
          <LI></LI>
          <LI class=right></LI>
        </UL>
      </DIV>
        <!-- / top -->
    </DIV>
    <!--panel -->
    <DIV id=container>
      <DIV style="PADDING-TOP: 500px" id=content>
      </DIV>
      <!-- / container -->
    </DIV>
    <!-- / container -->
    </BODY>
  </HTML>