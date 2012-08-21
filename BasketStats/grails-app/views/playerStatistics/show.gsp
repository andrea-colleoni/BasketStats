
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
			
				<g:if test="${playerStatisticsInstance?.roster}">
				<li class="fieldcontain">
					<span id="roster-label" class="property-label"><g:message code="playerStatistics.roster.label" default="Roster" /></span>
					
						<span class="property-value" aria-labelledby="roster-label"><g:link controller="roster" action="show" id="${playerStatisticsInstance?.roster?.id}">${playerStatisticsInstance?.roster?.encodeAsHTML()}</g:link></span>
					
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
			
				<g:if test="${playerStatisticsInstance?.defenseGrade}">
				<li class="fieldcontain">
					<span id="defenseGrade-label" class="property-label"><g:message code="playerStatistics.defenseGrade.label" default="Defense Grade" /></span>
					
						<span class="property-value" aria-labelledby="defenseGrade-label"><g:fieldValue bean="${playerStatisticsInstance}" field="defenseGrade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.offenseGrade}">
				<li class="fieldcontain">
					<span id="offenseGrade-label" class="property-label"><g:message code="playerStatistics.offenseGrade.label" default="Offense Grade" /></span>
					
						<span class="property-value" aria-labelledby="offenseGrade-label"><g:fieldValue bean="${playerStatisticsInstance}" field="offenseGrade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.overallGrade}">
				<li class="fieldcontain">
					<span id="overallGrade-label" class="property-label"><g:message code="playerStatistics.overallGrade.label" default="Overall Grade" /></span>
					
						<span class="property-value" aria-labelledby="overallGrade-label"><g:fieldValue bean="${playerStatisticsInstance}" field="overallGrade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="playerStatistics.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${playerStatisticsInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.firstQtrMinutes}">
				<li class="fieldcontain">
					<span id="firstQtrMinutes-label" class="property-label"><g:message code="playerStatistics.firstQtrMinutes.label" default="First Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="firstQtrMinutes-label"><g:fieldValue bean="${playerStatisticsInstance}" field="firstQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.secondQtrMinutes}">
				<li class="fieldcontain">
					<span id="secondQtrMinutes-label" class="property-label"><g:message code="playerStatistics.secondQtrMinutes.label" default="Second Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="secondQtrMinutes-label"><g:fieldValue bean="${playerStatisticsInstance}" field="secondQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.thirdQtrMinutes}">
				<li class="fieldcontain">
					<span id="thirdQtrMinutes-label" class="property-label"><g:message code="playerStatistics.thirdQtrMinutes.label" default="Third Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="thirdQtrMinutes-label"><g:fieldValue bean="${playerStatisticsInstance}" field="thirdQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.fourthQtrMinutes}">
				<li class="fieldcontain">
					<span id="fourthQtrMinutes-label" class="property-label"><g:message code="playerStatistics.fourthQtrMinutes.label" default="Fourth Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="fourthQtrMinutes-label"><g:fieldValue bean="${playerStatisticsInstance}" field="fourthQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.totalMinutes}">
				<li class="fieldcontain">
					<span id="totalMinutes-label" class="property-label"><g:message code="playerStatistics.totalMinutes.label" default="Total Minutes" /></span>
					
						<span class="property-value" aria-labelledby="totalMinutes-label"><g:fieldValue bean="${playerStatisticsInstance}" field="totalMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.threePtsScored}">
				<li class="fieldcontain">
					<span id="threePtsScored-label" class="property-label"><g:message code="playerStatistics.threePtsScored.label" default="Three Pts Scored" /></span>
					
						<span class="property-value" aria-labelledby="threePtsScored-label"><g:fieldValue bean="${playerStatisticsInstance}" field="threePtsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.threePtsAttempts}">
				<li class="fieldcontain">
					<span id="threePtsAttempts-label" class="property-label"><g:message code="playerStatistics.threePtsAttempts.label" default="Three Pts Attempts" /></span>
					
						<span class="property-value" aria-labelledby="threePtsAttempts-label"><g:fieldValue bean="${playerStatisticsInstance}" field="threePtsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.longDistanceShootsScored}">
				<li class="fieldcontain">
					<span id="longDistanceShootsScored-label" class="property-label"><g:message code="playerStatistics.longDistanceShootsScored.label" default="Long Distance Shoots Scored" /></span>
					
						<span class="property-value" aria-labelledby="longDistanceShootsScored-label"><g:fieldValue bean="${playerStatisticsInstance}" field="longDistanceShootsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.longDistanceShootsAttempts}">
				<li class="fieldcontain">
					<span id="longDistanceShootsAttempts-label" class="property-label"><g:message code="playerStatistics.longDistanceShootsAttempts.label" default="Long Distance Shoots Attempts" /></span>
					
						<span class="property-value" aria-labelledby="longDistanceShootsAttempts-label"><g:fieldValue bean="${playerStatisticsInstance}" field="longDistanceShootsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.shortDistanceShootsScored}">
				<li class="fieldcontain">
					<span id="shortDistanceShootsScored-label" class="property-label"><g:message code="playerStatistics.shortDistanceShootsScored.label" default="Short Distance Shoots Scored" /></span>
					
						<span class="property-value" aria-labelledby="shortDistanceShootsScored-label"><g:fieldValue bean="${playerStatisticsInstance}" field="shortDistanceShootsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.shortDistanceShootsAttempts}">
				<li class="fieldcontain">
					<span id="shortDistanceShootsAttempts-label" class="property-label"><g:message code="playerStatistics.shortDistanceShootsAttempts.label" default="Short Distance Shoots Attempts" /></span>
					
						<span class="property-value" aria-labelledby="shortDistanceShootsAttempts-label"><g:fieldValue bean="${playerStatisticsInstance}" field="shortDistanceShootsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.freeThrowsScored}">
				<li class="fieldcontain">
					<span id="freeThrowsScored-label" class="property-label"><g:message code="playerStatistics.freeThrowsScored.label" default="Free Throws Scored" /></span>
					
						<span class="property-value" aria-labelledby="freeThrowsScored-label"><g:fieldValue bean="${playerStatisticsInstance}" field="freeThrowsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.freeThrowsAttempts}">
				<li class="fieldcontain">
					<span id="freeThrowsAttempts-label" class="property-label"><g:message code="playerStatistics.freeThrowsAttempts.label" default="Free Throws Attempts" /></span>
					
						<span class="property-value" aria-labelledby="freeThrowsAttempts-label"><g:fieldValue bean="${playerStatisticsInstance}" field="freeThrowsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.defensiveRebounds}">
				<li class="fieldcontain">
					<span id="defensiveRebounds-label" class="property-label"><g:message code="playerStatistics.defensiveRebounds.label" default="Defensive Rebounds" /></span>
					
						<span class="property-value" aria-labelledby="defensiveRebounds-label"><g:fieldValue bean="${playerStatisticsInstance}" field="defensiveRebounds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.offensiveRebounds}">
				<li class="fieldcontain">
					<span id="offensiveRebounds-label" class="property-label"><g:message code="playerStatistics.offensiveRebounds.label" default="Offensive Rebounds" /></span>
					
						<span class="property-value" aria-labelledby="offensiveRebounds-label"><g:fieldValue bean="${playerStatisticsInstance}" field="offensiveRebounds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.steals}">
				<li class="fieldcontain">
					<span id="steals-label" class="property-label"><g:message code="playerStatistics.steals.label" default="Steals" /></span>
					
						<span class="property-value" aria-labelledby="steals-label"><g:fieldValue bean="${playerStatisticsInstance}" field="steals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.turnovers}">
				<li class="fieldcontain">
					<span id="turnovers-label" class="property-label"><g:message code="playerStatistics.turnovers.label" default="Turnovers" /></span>
					
						<span class="property-value" aria-labelledby="turnovers-label"><g:fieldValue bean="${playerStatisticsInstance}" field="turnovers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.assists}">
				<li class="fieldcontain">
					<span id="assists-label" class="property-label"><g:message code="playerStatistics.assists.label" default="Assists" /></span>
					
						<span class="property-value" aria-labelledby="assists-label"><g:fieldValue bean="${playerStatisticsInstance}" field="assists"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.blocksMade}">
				<li class="fieldcontain">
					<span id="blocksMade-label" class="property-label"><g:message code="playerStatistics.blocksMade.label" default="Blocks Made" /></span>
					
						<span class="property-value" aria-labelledby="blocksMade-label"><g:fieldValue bean="${playerStatisticsInstance}" field="blocksMade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.blocksSuffered}">
				<li class="fieldcontain">
					<span id="blocksSuffered-label" class="property-label"><g:message code="playerStatistics.blocksSuffered.label" default="Blocks Suffered" /></span>
					
						<span class="property-value" aria-labelledby="blocksSuffered-label"><g:fieldValue bean="${playerStatisticsInstance}" field="blocksSuffered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.foulsMade}">
				<li class="fieldcontain">
					<span id="foulsMade-label" class="property-label"><g:message code="playerStatistics.foulsMade.label" default="Fouls Made" /></span>
					
						<span class="property-value" aria-labelledby="foulsMade-label"><g:fieldValue bean="${playerStatisticsInstance}" field="foulsMade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.foulsSuffered}">
				<li class="fieldcontain">
					<span id="foulsSuffered-label" class="property-label"><g:message code="playerStatistics.foulsSuffered.label" default="Fouls Suffered" /></span>
					
						<span class="property-value" aria-labelledby="foulsSuffered-label"><g:fieldValue bean="${playerStatisticsInstance}" field="foulsSuffered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.expulsion}">
				<li class="fieldcontain">
					<span id="expulsion-label" class="property-label"><g:message code="playerStatistics.expulsion.label" default="Expulsion" /></span>
					
						<span class="property-value" aria-labelledby="expulsion-label"><g:formatBoolean boolean="${playerStatisticsInstance?.expulsion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.technicalFouls}">
				<li class="fieldcontain">
					<span id="technicalFouls-label" class="property-label"><g:message code="playerStatistics.technicalFouls.label" default="Technical Fouls" /></span>
					
						<span class="property-value" aria-labelledby="technicalFouls-label"><g:fieldValue bean="${playerStatisticsInstance}" field="technicalFouls"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerStatisticsInstance?.unsportmanlikeFouls}">
				<li class="fieldcontain">
					<span id="unsportmanlikeFouls-label" class="property-label"><g:message code="playerStatistics.unsportmanlikeFouls.label" default="Unsportmanlike Fouls" /></span>
					
						<span class="property-value" aria-labelledby="unsportmanlikeFouls-label"><g:fieldValue bean="${playerStatisticsInstance}" field="unsportmanlikeFouls"/></span>
					
				</li>
				</g:if>
			
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
