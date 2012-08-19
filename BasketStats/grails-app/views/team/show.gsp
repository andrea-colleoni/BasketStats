
<%@ page import="info.colleoni.basketstats.Team" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-team" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-team" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list team">
			
				<g:if test="${teamInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="team.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${teamInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.coach}">
				<li class="fieldcontain">
					<span id="coach-label" class="property-label"><g:message code="team.coach.label" default="Coach" /></span>
					
						<span class="property-value" aria-labelledby="coach-label"><g:link controller="person" action="show" id="${teamInstance?.coach?.id}">${teamInstance?.coach?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.executives}">
				<li class="fieldcontain">
					<span id="executives-label" class="property-label"><g:message code="team.executives.label" default="Executives" /></span>
					
						<g:each in="${teamInstance.executives}" var="e">
						<span class="property-value" aria-labelledby="executives-label"><g:link controller="person" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.players}">
				<li class="fieldcontain">
					<span id="players-label" class="property-label"><g:message code="team.players.label" default="Players" /></span>
					
						<g:each in="${teamInstance.players}" var="p">
						<span class="property-value" aria-labelledby="players-label"><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${teamInstance?.season}">
				<li class="fieldcontain">
					<span id="season-label" class="property-label"><g:message code="team.season.label" default="Season" /></span>
					
						<span class="property-value" aria-labelledby="season-label"><g:link controller="season" action="show" id="${teamInstance?.season?.id}">${teamInstance?.season?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${teamInstance?.id}" />
					<g:link class="edit" action="edit" id="${teamInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
