
<%@ page import="info.colleoni.basketstats.Player" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-player" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list player">
			
				<g:if test="${playerInstance?.fullname}">
				<li class="fieldcontain">
					<span id="fullname-label" class="property-label"><g:message code="player.fullname.label" default="Fullname" /></span>
					
						<span class="property-value" aria-labelledby="fullname-label"><g:fieldValue bean="${playerInstance}" field="fullname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="player.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${playerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="player.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${playerInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.streetAddress}">
				<li class="fieldcontain">
					<span id="streetAddress-label" class="property-label"><g:message code="player.streetAddress.label" default="Street Address" /></span>
					
						<span class="property-value" aria-labelledby="streetAddress-label"><g:fieldValue bean="${playerInstance}" field="streetAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="player.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${playerInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="player.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${playerInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.province}">
				<li class="fieldcontain">
					<span id="province-label" class="property-label"><g:message code="player.province.label" default="Province" /></span>
					
						<span class="property-value" aria-labelledby="province-label"><g:fieldValue bean="${playerInstance}" field="province"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="player.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.bio}">
				<li class="fieldcontain">
					<span id="bio-label" class="property-label"><g:message code="player.bio.label" default="Bio" /></span>
					
						<span class="property-value" aria-labelledby="bio-label"><g:fieldValue bean="${playerInstance}" field="bio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="player.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${playerInstance?.user?.id}">${playerInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.shirtNumber}">
				<li class="fieldcontain">
					<span id="shirtNumber-label" class="property-label"><g:message code="player.shirtNumber.label" default="Shirt Number" /></span>
					
						<span class="property-value" aria-labelledby="shirtNumber-label"><g:fieldValue bean="${playerInstance}" field="shirtNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="player.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${playerInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.team}">
				<li class="fieldcontain">
					<span id="team-label" class="property-label"><g:message code="player.team.label" default="Team" /></span>
					
						<span class="property-value" aria-labelledby="team-label"><g:link controller="team" action="show" id="${playerInstance?.team?.id}">${playerInstance?.team?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${playerInstance?.id}" />
					<g:link class="edit" action="edit" id="${playerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
