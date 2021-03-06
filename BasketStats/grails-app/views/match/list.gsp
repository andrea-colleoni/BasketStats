
<%@ page import="info.colleoni.basketstats.Match" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-match" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="match.championshipPhase.label" default="Championship Phase" /></th>
					
						<g:sortableColumn property="matchDate" title="${message(code: 'match.matchDate.label', default: 'Match Date')}" />
					
						<g:sortableColumn property="round" title="${message(code: 'match.round.label', default: 'Round')}" />
					
						<g:sortableColumn property="phase" title="${message(code: 'match.phase.label', default: 'Phase')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matchInstanceList}" status="i" var="matchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${matchInstance.id}">${matchInstance.teamA} - ${matchInstance.teamB}</g:link></td>
					
						<td><g:formatDate type="date" date="${matchInstance.matchDate}" /></td>
					
						<td>${fieldValue(bean: matchInstance, field: "round")} ${fieldValue(bean: matchInstance, field: "phase")}</td>
					
						<td>${matchInstance.finalTeamAScore} - ${matchInstance.finalTeamBScore}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matchInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
