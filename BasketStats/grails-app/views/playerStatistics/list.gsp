
<%@ page import="info.colleoni.basketstats.PlayerStatistics" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playerStatistics.label', default: 'PlayerStatistics')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-playerStatistics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-playerStatistics" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="playerStatistics.match.label" default="Match" /></th>
					
						<th><g:message code="playerStatistics.roster.label" default="Roster" /></th>
					
						<th><g:message code="playerStatistics.player.label" default="Player" /></th>
					
						<g:sortableColumn property="startingFive" title="${message(code: 'playerStatistics.startingFive.label', default: 'Starting Five')}" />
					
						<g:sortableColumn property="defenseGrade" title="${message(code: 'playerStatistics.defenseGrade.label', default: 'Defense Grade')}" />
					
						<g:sortableColumn property="offenseGrade" title="${message(code: 'playerStatistics.offenseGrade.label', default: 'Offense Grade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playerStatisticsInstanceList}" status="i" var="playerStatisticsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playerStatisticsInstance.id}">${fieldValue(bean: playerStatisticsInstance, field: "match")}</g:link></td>
					
						<td>${fieldValue(bean: playerStatisticsInstance, field: "roster")}</td>
					
						<td>${fieldValue(bean: playerStatisticsInstance, field: "player")}</td>
					
						<td><g:formatBoolean boolean="${playerStatisticsInstance.startingFive}" /></td>
					
						<td>${fieldValue(bean: playerStatisticsInstance, field: "defenseGrade")}</td>
					
						<td>${fieldValue(bean: playerStatisticsInstance, field: "offenseGrade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playerStatisticsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
