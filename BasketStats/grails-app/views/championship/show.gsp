
<%@ page import="info.colleoni.basketstats.Championship" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'championship.label', default: 'Championship')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-championship" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-championship" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list championship">
			
				<g:if test="${championshipInstance?.season}">
				<li class="fieldcontain">
					<span id="season-label" class="property-label"><g:message code="championship.season.label" default="Season" /></span>
					
						<span class="property-value" aria-labelledby="season-label"><g:link controller="season" action="show" id="${championshipInstance?.season?.id}">${championshipInstance?.season?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${championshipInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="championship.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:fieldValue bean="${championshipInstance}" field="division"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${championshipInstance?.champioshipPhases}">
				<li class="fieldcontain">
					<span id="champioshipPhases-label" class="property-label"><g:message code="championship.champioshipPhases.label" default="Champioship Phases" /></span>
					
						<g:each in="${championshipInstance.champioshipPhases}" var="c">
						<span class="property-value" aria-labelledby="champioshipPhases-label"><g:link controller="championshipPhase" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${championshipInstance?.id}" />
					<g:link class="edit" action="edit" id="${championshipInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
