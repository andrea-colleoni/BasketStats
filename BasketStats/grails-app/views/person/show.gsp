
<%@ page import="info.colleoni.basketstats.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.fullname}">
				<li class="fieldcontain">
					<span id="fullname-label" class="property-label"><g:message code="person.fullname.label" default="Fullname" /></span>
					
						<span class="property-value" aria-labelledby="fullname-label"><g:fieldValue bean="${personInstance}" field="fullname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="person.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="person.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${personInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.streetAddress}">
				<li class="fieldcontain">
					<span id="streetAddress-label" class="property-label"><g:message code="person.streetAddress.label" default="Street Address" /></span>
					
						<span class="property-value" aria-labelledby="streetAddress-label"><g:fieldValue bean="${personInstance}" field="streetAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="person.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${personInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="person.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${personInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.province}">
				<li class="fieldcontain">
					<span id="province-label" class="property-label"><g:message code="person.province.label" default="Province" /></span>
					
						<span class="property-value" aria-labelledby="province-label"><g:fieldValue bean="${personInstance}" field="province"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="person.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.bio}">
				<li class="fieldcontain">
					<span id="bio-label" class="property-label"><g:message code="person.bio.label" default="Bio" /></span>
					
						<span class="property-value" aria-labelledby="bio-label"><g:fieldValue bean="${personInstance}" field="bio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="person.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${personInstance?.user?.id}">${personInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<g:link class="edit" action="edit" id="${personInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
