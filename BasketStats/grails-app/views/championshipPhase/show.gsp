
<%@ page import="info.colleoni.basketstats.ChampionshipPhase" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'championshipPhase.label', default: 'ChampionshipPhase')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-championshipPhase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-championshipPhase" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list championshipPhase">
			
				<g:if test="${championshipPhaseInstance?.championship}">
				<li class="fieldcontain">
					<span id="championship-label" class="property-label"><g:message code="championshipPhase.championship.label" default="Championship" /></span>
					
						<span class="property-value" aria-labelledby="championship-label"><g:link controller="championship" action="show" id="${championshipPhaseInstance?.championship?.id}">${championshipPhaseInstance?.championship?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${championshipPhaseInstance?.groupage}">
				<li class="fieldcontain">
					<span id="groupage-label" class="property-label"><g:message code="championshipPhase.groupage.label" default="Groupage" /></span>
					
						<span class="property-value" aria-labelledby="groupage-label"><g:fieldValue bean="${championshipPhaseInstance}" field="groupage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${championshipPhaseInstance?.phase}">
				<li class="fieldcontain">
					<span id="phase-label" class="property-label"><g:message code="championshipPhase.phase.label" default="Phase" /></span>
					
						<span class="property-value" aria-labelledby="phase-label"><g:fieldValue bean="${championshipPhaseInstance}" field="phase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${championshipPhaseInstance?.matches}">
				<li class="fieldcontain">
					<span id="matches-label" class="property-label"><g:message code="championshipPhase.matches.label" default="Matches" /></span>
					
						<g:each in="${championshipPhaseInstance.matches}" var="m">
						<span class="property-value" aria-labelledby="matches-label"><g:link controller="match" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${championshipPhaseInstance?.rosters}">
				<li class="fieldcontain">
					<span id="rosters-label" class="property-label"><g:message code="championshipPhase.rosters.label" default="Rosters" /></span>
					
						<g:each in="${championshipPhaseInstance.rosters}" var="r">
						<span class="property-value" aria-labelledby="rosters-label"><g:link controller="roster" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${championshipPhaseInstance?.id}" />
					<g:link class="edit" action="edit" id="${championshipPhaseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
