
<%@ page import="info.colleoni.basketstats.Roster" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roster.label', default: 'Roster')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-roster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-roster" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="roster.championship.label" default="Championship" /></th>
					
						<th><g:message code="roster.team.label" default="Team" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rosterInstanceList}" status="i" var="rosterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rosterInstance.id}">${fieldValue(bean: rosterInstance, field: "championship")}</g:link></td>
					
						<td>${fieldValue(bean: rosterInstance, field: "team")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rosterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
