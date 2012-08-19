
<%@ page import="info.colleoni.basketstats.Statistics" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'statistics.label', default: 'Statistics')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-statistics" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-statistics" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list statistics">
			
				<g:if test="${statisticsInstance?.match}">
				<li class="fieldcontain">
					<span id="match-label" class="property-label"><g:message code="statistics.match.label" default="Match" /></span>
					
						<span class="property-value" aria-labelledby="match-label"><g:link controller="match" action="show" id="${statisticsInstance?.match?.id}">${statisticsInstance?.match?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.player}">
				<li class="fieldcontain">
					<span id="player-label" class="property-label"><g:message code="statistics.player.label" default="Player" /></span>
					
						<span class="property-value" aria-labelledby="player-label"><g:link controller="player" action="show" id="${statisticsInstance?.player?.id}">${statisticsInstance?.player?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.startingFive}">
				<li class="fieldcontain">
					<span id="startingFive-label" class="property-label"><g:message code="statistics.startingFive.label" default="Starting Five" /></span>
					
						<span class="property-value" aria-labelledby="startingFive-label"><g:formatBoolean boolean="${statisticsInstance?.startingFive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.firstQtrMinutes}">
				<li class="fieldcontain">
					<span id="firstQtrMinutes-label" class="property-label"><g:message code="statistics.firstQtrMinutes.label" default="First Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="firstQtrMinutes-label"><g:fieldValue bean="${statisticsInstance}" field="firstQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.secondQtrMinutes}">
				<li class="fieldcontain">
					<span id="secondQtrMinutes-label" class="property-label"><g:message code="statistics.secondQtrMinutes.label" default="Second Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="secondQtrMinutes-label"><g:fieldValue bean="${statisticsInstance}" field="secondQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.thirdQtrMinutes}">
				<li class="fieldcontain">
					<span id="thirdQtrMinutes-label" class="property-label"><g:message code="statistics.thirdQtrMinutes.label" default="Third Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="thirdQtrMinutes-label"><g:fieldValue bean="${statisticsInstance}" field="thirdQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.fourthQtrMinutes}">
				<li class="fieldcontain">
					<span id="fourthQtrMinutes-label" class="property-label"><g:message code="statistics.fourthQtrMinutes.label" default="Fourth Qtr Minutes" /></span>
					
						<span class="property-value" aria-labelledby="fourthQtrMinutes-label"><g:fieldValue bean="${statisticsInstance}" field="fourthQtrMinutes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.threePtsScored}">
				<li class="fieldcontain">
					<span id="threePtsScored-label" class="property-label"><g:message code="statistics.threePtsScored.label" default="Three Pts Scored" /></span>
					
						<span class="property-value" aria-labelledby="threePtsScored-label"><g:fieldValue bean="${statisticsInstance}" field="threePtsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.threePtsAttempts}">
				<li class="fieldcontain">
					<span id="threePtsAttempts-label" class="property-label"><g:message code="statistics.threePtsAttempts.label" default="Three Pts Attempts" /></span>
					
						<span class="property-value" aria-labelledby="threePtsAttempts-label"><g:fieldValue bean="${statisticsInstance}" field="threePtsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.longDistanceShootsScored}">
				<li class="fieldcontain">
					<span id="longDistanceShootsScored-label" class="property-label"><g:message code="statistics.longDistanceShootsScored.label" default="Long Distance Shoots Scored" /></span>
					
						<span class="property-value" aria-labelledby="longDistanceShootsScored-label"><g:fieldValue bean="${statisticsInstance}" field="longDistanceShootsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.longDistanceShootsAttempts}">
				<li class="fieldcontain">
					<span id="longDistanceShootsAttempts-label" class="property-label"><g:message code="statistics.longDistanceShootsAttempts.label" default="Long Distance Shoots Attempts" /></span>
					
						<span class="property-value" aria-labelledby="longDistanceShootsAttempts-label"><g:fieldValue bean="${statisticsInstance}" field="longDistanceShootsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.shortDistanceShootsScored}">
				<li class="fieldcontain">
					<span id="shortDistanceShootsScored-label" class="property-label"><g:message code="statistics.shortDistanceShootsScored.label" default="Short Distance Shoots Scored" /></span>
					
						<span class="property-value" aria-labelledby="shortDistanceShootsScored-label"><g:fieldValue bean="${statisticsInstance}" field="shortDistanceShootsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.shortDistanceShootsAttempts}">
				<li class="fieldcontain">
					<span id="shortDistanceShootsAttempts-label" class="property-label"><g:message code="statistics.shortDistanceShootsAttempts.label" default="Short Distance Shoots Attempts" /></span>
					
						<span class="property-value" aria-labelledby="shortDistanceShootsAttempts-label"><g:fieldValue bean="${statisticsInstance}" field="shortDistanceShootsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.freeThrowsScored}">
				<li class="fieldcontain">
					<span id="freeThrowsScored-label" class="property-label"><g:message code="statistics.freeThrowsScored.label" default="Free Throws Scored" /></span>
					
						<span class="property-value" aria-labelledby="freeThrowsScored-label"><g:fieldValue bean="${statisticsInstance}" field="freeThrowsScored"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.freeThrowsAttempts}">
				<li class="fieldcontain">
					<span id="freeThrowsAttempts-label" class="property-label"><g:message code="statistics.freeThrowsAttempts.label" default="Free Throws Attempts" /></span>
					
						<span class="property-value" aria-labelledby="freeThrowsAttempts-label"><g:fieldValue bean="${statisticsInstance}" field="freeThrowsAttempts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.defensiveRebounds}">
				<li class="fieldcontain">
					<span id="defensiveRebounds-label" class="property-label"><g:message code="statistics.defensiveRebounds.label" default="Defensive Rebounds" /></span>
					
						<span class="property-value" aria-labelledby="defensiveRebounds-label"><g:fieldValue bean="${statisticsInstance}" field="defensiveRebounds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.offensiveRebounds}">
				<li class="fieldcontain">
					<span id="offensiveRebounds-label" class="property-label"><g:message code="statistics.offensiveRebounds.label" default="Offensive Rebounds" /></span>
					
						<span class="property-value" aria-labelledby="offensiveRebounds-label"><g:fieldValue bean="${statisticsInstance}" field="offensiveRebounds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.steals}">
				<li class="fieldcontain">
					<span id="steals-label" class="property-label"><g:message code="statistics.steals.label" default="Steals" /></span>
					
						<span class="property-value" aria-labelledby="steals-label"><g:fieldValue bean="${statisticsInstance}" field="steals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.turnovers}">
				<li class="fieldcontain">
					<span id="turnovers-label" class="property-label"><g:message code="statistics.turnovers.label" default="Turnovers" /></span>
					
						<span class="property-value" aria-labelledby="turnovers-label"><g:fieldValue bean="${statisticsInstance}" field="turnovers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.assists}">
				<li class="fieldcontain">
					<span id="assists-label" class="property-label"><g:message code="statistics.assists.label" default="Assists" /></span>
					
						<span class="property-value" aria-labelledby="assists-label"><g:fieldValue bean="${statisticsInstance}" field="assists"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.blocksMade}">
				<li class="fieldcontain">
					<span id="blocksMade-label" class="property-label"><g:message code="statistics.blocksMade.label" default="Blocks Made" /></span>
					
						<span class="property-value" aria-labelledby="blocksMade-label"><g:fieldValue bean="${statisticsInstance}" field="blocksMade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.blocksSuffered}">
				<li class="fieldcontain">
					<span id="blocksSuffered-label" class="property-label"><g:message code="statistics.blocksSuffered.label" default="Blocks Suffered" /></span>
					
						<span class="property-value" aria-labelledby="blocksSuffered-label"><g:fieldValue bean="${statisticsInstance}" field="blocksSuffered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.foulsMade}">
				<li class="fieldcontain">
					<span id="foulsMade-label" class="property-label"><g:message code="statistics.foulsMade.label" default="Fouls Made" /></span>
					
						<span class="property-value" aria-labelledby="foulsMade-label"><g:fieldValue bean="${statisticsInstance}" field="foulsMade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${statisticsInstance?.foulsSuffered}">
				<li class="fieldcontain">
					<span id="foulsSuffered-label" class="property-label"><g:message code="statistics.foulsSuffered.label" default="Fouls Suffered" /></span>
					
						<span class="property-value" aria-labelledby="foulsSuffered-label"><g:fieldValue bean="${statisticsInstance}" field="foulsSuffered"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${statisticsInstance?.id}" />
					<g:link class="edit" action="edit" id="${statisticsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
