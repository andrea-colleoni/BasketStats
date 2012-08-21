
<%@ page import="info.colleoni.basketstats.MatchCall" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matchCall.label', default: 'MatchCall')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-matchCall" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-matchCall" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list matchCall">
			
				<g:if test="${matchCallInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="matchCall.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${matchCallInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchCallInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="matchCall.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${matchCallInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchCallInstance?.roster}">
				<li class="fieldcontain">
					<span id="roster-label" class="property-label"><g:message code="matchCall.roster.label" default="Roster" /></span>
					
						<span class="property-value" aria-labelledby="roster-label"><g:link controller="roster" action="show" id="${matchCallInstance?.roster?.id}">${matchCallInstance?.roster?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchCallInstance?.players}">
				<li class="fieldcontain">
					<span id="players-label" class="property-label"><g:message code="matchCall.players.label" default="Players" /></span>
					
						<g:each in="${matchCallInstance.players}" var="p">
						<span class="property-value" aria-labelledby="players-label"><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${matchCallInstance?.id}" />
					<g:link class="edit" action="edit" id="${matchCallInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
