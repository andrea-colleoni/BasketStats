
<%@ page import="info.colleoni.basketstats.Statistics" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'statistics.label', default: 'Statistics')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-statistics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-statistics" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="statistics.match.label" default="Match" /></th>
					
						<th><g:message code="statistics.player.label" default="Player" /></th>
					
						<g:sortableColumn property="startingFive" title="${message(code: 'statistics.startingFive.label', default: 'Starting Five')}" />
					
						<g:sortableColumn property="firstQtrMinutes" title="${message(code: 'statistics.firstQtrMinutes.label', default: 'First Qtr Minutes')}" />
					
						<g:sortableColumn property="secondQtrMinutes" title="${message(code: 'statistics.secondQtrMinutes.label', default: 'Second Qtr Minutes')}" />
					
						<g:sortableColumn property="thirdQtrMinutes" title="${message(code: 'statistics.thirdQtrMinutes.label', default: 'Third Qtr Minutes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${statisticsInstanceList}" status="i" var="statisticsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${statisticsInstance.id}">${fieldValue(bean: statisticsInstance, field: "match")}</g:link></td>
					
						<td>${fieldValue(bean: statisticsInstance, field: "player")}</td>
					
						<td><g:formatBoolean boolean="${statisticsInstance.startingFive}" /></td>
					
						<td>${fieldValue(bean: statisticsInstance, field: "firstQtrMinutes")}</td>
					
						<td>${fieldValue(bean: statisticsInstance, field: "secondQtrMinutes")}</td>
					
						<td>${fieldValue(bean: statisticsInstance, field: "thirdQtrMinutes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${statisticsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
