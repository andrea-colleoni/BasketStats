
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
			
				<g:if test="${teamInstance?.coaches}">
				<li class="fieldcontain">
					<span id="coaches-label" class="property-label"><g:message code="team.coaches.label" default="Coaches" /></span>
					
						<g:each in="${teamInstance.coaches}" var="c">
						<span class="property-value" aria-labelledby="coaches-label"><g:link controller="person" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
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
				
				<g:if test="${teamInstance?.championshipPhases}">
				<li class="fieldcontain">
					<span id="championshipPhases-label" class="property-label"><g:message code="team.championshipPhases.label" default="Championship phases" /></span>
					
						<g:each in="${teamInstance.championshipPhases}" var="p">
						<span class="property-value" aria-labelledby="playerSets-label"><g:link controller="championshipPhase" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>				
			
				<g:if test="${teamInstance?.playerSets}">
				<li class="fieldcontain">
					<span id="playerSets-label" class="property-label"><g:message code="team.playerSets.label" default="Player Sets" /></span>
					
						<g:each in="${teamInstance.playerSets}" var="p">
						<span class="property-value" aria-labelledby="playerSets-label"><g:link controller="playerSet" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
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
