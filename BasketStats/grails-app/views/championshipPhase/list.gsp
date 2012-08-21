
<%@ page import="info.colleoni.basketstats.ChampionshipPhase" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'championshipPhase.label', default: 'ChampionshipPhase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-championshipPhase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-championshipPhase" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="championshipPhase.championship.label" default="Championship" /></th>
					
						<g:sortableColumn property="groupage" title="${message(code: 'championshipPhase.groupage.label', default: 'Groupage')}" />
					
						<g:sortableColumn property="phase" title="${message(code: 'championshipPhase.phase.label', default: 'Phase')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${championshipPhaseInstanceList}" status="i" var="championshipPhaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${championshipPhaseInstance.id}">${fieldValue(bean: championshipPhaseInstance, field: "championship")}</g:link></td>
					
						<td>${fieldValue(bean: championshipPhaseInstance, field: "groupage")}</td>
					
						<td>${fieldValue(bean: championshipPhaseInstance, field: "phase")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${championshipPhaseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
