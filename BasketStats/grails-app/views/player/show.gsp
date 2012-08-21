
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
			
				<g:if test="${playerInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="player.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${playerInstance?.person?.id}">${playerInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.shirtNumber}">
				<li class="fieldcontain">
					<span id="shirtNumber-label" class="property-label"><g:message code="player.shirtNumber.label" default="Shirt Number" /></span>
					
						<span class="property-value" aria-labelledby="shirtNumber-label"><g:fieldValue bean="${playerInstance}" field="shirtNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.injuried}">
				<li class="fieldcontain">
					<span id="injuried-label" class="property-label"><g:message code="player.injuried.label" default="Injuried" /></span>
					
						<span class="property-value" aria-labelledby="injuried-label"><g:formatBoolean boolean="${playerInstance?.injuried}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.playerStats}">
				<li class="fieldcontain">
					<span id="playerStats-label" class="property-label"><g:message code="player.playerStats.label" default="Player Stats" /></span>
					
						<g:each in="${playerInstance.playerStats}" var="p">
						<span class="property-value" aria-labelledby="playerStats-label"><g:link controller="playerStatistics" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.roles}">
				<li class="fieldcontain">
					<span id="roles-label" class="property-label"><g:message code="player.roles.label" default="Roles" /></span>
					
						<g:each in="${playerInstance.roles}" var="r">
						<span class="property-value" aria-labelledby="roles-label"><g:link controller="role" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.rosters}">
				<li class="fieldcontain">
					<span id="rosters-label" class="property-label"><g:message code="player.rosters.label" default="Rosters" /></span>
					
						<g:each in="${playerInstance.rosters}" var="r">
						<span class="property-value" aria-labelledby="rosters-label"><g:link controller="roster" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
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
