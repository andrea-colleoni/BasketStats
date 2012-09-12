
<%@ page import="info.colleoni.basketstats.PlayerSet" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playerSet.label', default: 'PlayerSet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-playerSet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-playerSet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'playerSet.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'playerSet.notes.label', default: 'Notes')}" />
					
						<th><g:message code="playerSet.roster.label" default="Roster" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playerSetInstanceList}" status="i" var="playerSetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playerSetInstance.id}">${fieldValue(bean: playerSetInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: playerSetInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: playerSetInstance, field: "roster")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playerSetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
