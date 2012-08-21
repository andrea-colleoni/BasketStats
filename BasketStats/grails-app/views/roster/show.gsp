
<%@ page import="info.colleoni.basketstats.Roster" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roster.label', default: 'Roster')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-roster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-roster" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list roster">
			
				<g:if test="${rosterInstance?.championship}">
				<li class="fieldcontain">
					<span id="championship-label" class="property-label"><g:message code="roster.championship.label" default="Championship" /></span>
					
						<span class="property-value" aria-labelledby="championship-label"><g:link controller="championship" action="show" id="${rosterInstance?.championship?.id}">${rosterInstance?.championship?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rosterInstance?.team}">
				<li class="fieldcontain">
					<span id="team-label" class="property-label"><g:message code="roster.team.label" default="Team" /></span>
					
						<span class="property-value" aria-labelledby="team-label"><g:link controller="team" action="show" id="${rosterInstance?.team?.id}">${rosterInstance?.team?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rosterInstance?.players}">
				<li class="fieldcontain">
					<span id="players-label" class="property-label"><g:message code="roster.players.label" default="Players" /></span>
					
						<g:each in="${rosterInstance.players}" var="p">
						<span class="property-value" aria-labelledby="players-label"><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${rosterInstance?.id}" />
					<g:link class="edit" action="edit" id="${rosterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
