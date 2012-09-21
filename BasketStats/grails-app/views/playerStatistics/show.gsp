
<%@ page import="info.colleoni.basketstats.PlayerStatistics" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playerStatistics.label', default: 'PlayerStatistics')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-playerStatistics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-playerStatistics" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list playerStatistics">
			
				<g:if test="${playerStatisticsInstance?.match}">
				<li class="fieldcontain">
					<span id="match-label" class="property-label"><g:message code="playerStatistics.match.label" default="Match" /></span>
					
						<span class="property-value" aria-labelledby="match-label"><g:link controller="match" action="show" id="${playerStatisticsInstance?.match?.id}">${playerStatisticsInstance?.match?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.playerSet}">
				<li class="fieldcontain">
					<span id="playerSet-label" class="property-label"><g:message code="playerStatistics.playerSet.label" default="Roster" /></span>
					
						<span class="property-value" aria-labelledby="roster-label"><g:link controller="playerSet" action="show" id="${playerStatisticsInstance?.playerSet?.id}">${playerStatisticsInstance?.playerSet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.player}">
				<li class="fieldcontain">
					<span id="player-label" class="property-label"><g:message code="playerStatistics.player.label" default="Player" /></span>
					
						<span class="property-value" aria-labelledby="player-label"><g:link controller="player" action="show" id="${playerStatisticsInstance?.player?.id}">${playerStatisticsInstance?.player?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.startingFive}">
				<li class="fieldcontain">
					<span id="startingFive-label" class="property-label"><g:message code="playerStatistics.startingFive.label" default="Starting Five" /></span>
					
						<span class="property-value" aria-labelledby="startingFive-label"><g:formatBoolean boolean="${playerStatisticsInstance?.startingFive}" /></span>
					
				</li>
				</g:if>
				
				<table class="SimpleCleanTable" id="GradeTableView">
					<caption>Grades</caption>
					<thead>
						<tr>
							<th>Overall</th>		
							<th>Defensive</th>
							<th>Off</th>
							<th>Notes</th>
						</tr>
					</thead>
					<tbody>
						<th><g:fieldValue bean="${playerStatisticsInstance}" field="overallGrade"/></th>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="defenseGrade"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="offenseGrade"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="notes"/></td>
					</tbody>
				</table>				

				<table class="SimpleCleanTable" id="TimeTableView">
					<caption>Time</caption>
					<thead>
						<tr>
							<th>Total</th>		
							<th>Qtr.1</th>
							<th>Qtr.2</th>
							<th>Qtr.3</th>
							<th>Qtr.4</th>
						</tr>
					</thead>
					<tbody>
						<th><g:fieldValue bean="${playerStatisticsInstance}" field="totalMinutes"/></th>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="firstQtrMinutes"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="secondQtrMinutes"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="thirdQtrMinutes"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="fourthQtrMinutes"/></td>
					</tbody>
				</table>	

				<table class="SimpleCleanTable" id="ScoreTableView">
					<caption>Score</caption>
					<thead>
						<tr>
							<th>3 Pts</th>		
							<th>Long dst 2 Pts</th>
							<th>Short dst 2 Pts</th>
							<th>Free Throws</th>
						</tr>
					</thead>
					<tbody>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="threePtsScored"/>
						/ <g:fieldValue bean="${playerStatisticsInstance}" field="threePtsAttempts"/>
						</td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="longDistanceShootsScored"/>
						/ <g:fieldValue bean="${playerStatisticsInstance}" field="longDistanceShootsAttempts"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="shortDistanceShootsScored"/>
						/ <g:fieldValue bean="${playerStatisticsInstance}" field="shortDistanceShootsAttempts"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="freeThrowsScored"/>
						/ <g:fieldValue bean="${playerStatisticsInstance}" field="freeThrowsAttempts"/></td>
					</tbody>
				</table>	
				
				<table class="SimpleCleanTable" id="PlayTableView">
					<caption>Playing stats</caption>
					<thead>
						<tr>
							<th>Def. Rbds.</th>		
							<th>Off. Rbds.</th>
							<th>Steals</th>
							<th>Turnovers</th>
							<th>Assists</th>
							<th>Blks made</th>
							<th>Blks suff</th>
						</tr>
					</thead>
					<tbody>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="defensiveRebounds"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="offensiveRebounds"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="steals"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="turnovers"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="assists"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="blocksMade"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="blocksSuffered"/></td>
					</tbody>
				</table>				

				<table class="SimpleCleanTable" id="PlayTableView">
					<caption>Fouls</caption>
					<thead>
						<tr>
							<th>Made</th>		
							<th>Suffered</th>
							<th>Expulsion</th>
							<th>Technicals</th>
							<th>USLF</th>
						</tr>
					</thead>
					<tbody>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="foulsMade"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="foulsSuffered"/></td>
						<td><g:formatBoolean boolean="${playerStatisticsInstance?.expulsion}" /></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="technicalFouls"/></td>
						<td><g:fieldValue bean="${playerStatisticsInstance}" field="unsportmanlikeFouls"/></td>
					</tbody>
				</table>	
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${playerStatisticsInstance?.id}" />
					<g:link class="edit" action="edit" id="${playerStatisticsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
