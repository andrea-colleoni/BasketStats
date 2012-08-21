
<%@ page import="info.colleoni.basketstats.MatchCall" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matchCall.label', default: 'MatchCall')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-matchCall" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-matchCall" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'matchCall.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'matchCall.notes.label', default: 'Notes')}" />
					
						<th><g:message code="matchCall.roster.label" default="Roster" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matchCallInstanceList}" status="i" var="matchCallInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${matchCallInstance.id}">${fieldValue(bean: matchCallInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: matchCallInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: matchCallInstance, field: "roster")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matchCallInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
