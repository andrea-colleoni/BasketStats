
<%@ page import="info.colleoni.basketstats.Match" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-match" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list match">
			
				<g:if test="${matchInstance?.teamA}">
				<li class="fieldcontain">
					<span id="teamA-label" class="property-label"><g:message code="match.teamA.label" default="Team A" /></span>
					
						<span class="property-value" aria-labelledby="teamA-label"><g:link controller="team" action="show" id="${matchInstance?.teamA?.id}">${matchInstance?.teamA?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.teamB}">
				<li class="fieldcontain">
					<span id="teamB-label" class="property-label"><g:message code="match.teamB.label" default="Team B" /></span>
					
						<span class="property-value" aria-labelledby="teamB-label"><g:link controller="team" action="show" id="${matchInstance?.teamB?.id}">${matchInstance?.teamB?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.matchDate}">
				<li class="fieldcontain">
					<span id="matchDate-label" class="property-label"><g:message code="match.matchDate.label" default="Match Date" /></span>
					
						<span class="property-value" aria-labelledby="matchDate-label"><g:formatDate date="${matchInstance?.matchDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="match.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${matchInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.referee}">
				<li class="fieldcontain">
					<span id="referee-label" class="property-label"><g:message code="match.referee.label" default="Referee" /></span>
					
						<span class="property-value" aria-labelledby="referee-label"><g:link controller="person" action="show" id="${matchInstance?.referee?.id}">${matchInstance?.referee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.season}">
				<li class="fieldcontain">
					<span id="season-label" class="property-label"><g:message code="match.season.label" default="Season" /></span>
					
						<span class="property-value" aria-labelledby="season-label"><g:link controller="season" action="show" id="${matchInstance?.season?.id}">${matchInstance?.season?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${matchInstance?.id}" />
					<g:link class="edit" action="edit" id="${matchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
