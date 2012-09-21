
<%@ page import="info.colleoni.basketstats.Match" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-match" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list match">
			
				<g:if test="${matchInstance?.championshipPhase}">
				<li class="fieldcontain">
					<span id="championshipPhase-label" class="property-label"><g:message code="match.championshipPhase.label" default="Championship Phase" /></span>
					
						<span class="property-value" aria-labelledby="championshipPhase-label"><g:link controller="championshipPhase" action="show" id="${matchInstance?.championshipPhase?.id}">${matchInstance?.championshipPhase?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<li class="fieldcontain">
					<span id="match-label" class="property-label"><g:message code="match.label" default="Match" /></span>
					<span class="property-value">
						<g:link controller="matchCall" action="show" id="${matchInstance?.teamA?.id}">${matchInstance?.teamA?.name.encodeAsHTML()}</g:link>
						-
						<g:link controller="matchCall" action="show" id="${matchInstance?.teamB?.id}">${matchInstance?.teamB?.name.encodeAsHTML()}</g:link>
					</span>
				</li>
				
				<g:if test="${matchInstance?.matchDate}">
				<li class="fieldcontain">
					<span id="matchDate-label" class="property-label"><g:message code="match.matchDate.label" default="Match Date" /></span>
					
						<span class="property-value" aria-labelledby="matchDate-label"><g:formatDate date="${matchInstance?.matchDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.round}">
				<li class="fieldcontain">
					<span id="round-label" class="property-label"><g:message code="match.round.label" default="Round" /></span>
					
						<span class="property-value" aria-labelledby="round-label"><g:fieldValue bean="${matchInstance}" field="round"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.phase}">
				<li class="fieldcontain">
					<span id="phase-label" class="property-label"><g:message code="match.phase.label" default="Phase" /></span>
					
						<span class="property-value" aria-labelledby="phase-label"><g:fieldValue bean="${matchInstance}" field="phase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="match.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${matchInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.referee}">
				<li class="fieldcontain">
					<span id="referee-label" class="property-label"><g:message code="match.referee.label" default="Referee" /></span>
					
						<span class="property-value" aria-labelledby="referee-label"><g:link controller="person" action="show" id="${matchInstance?.referee?.id}">${matchInstance?.referee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.matchReport}">
				<li class="fieldcontain">
					<span id="matchReport-label" class="property-label"><g:message code="match.matchReport.label" default="Match Report" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.matchScout}">
				<li class="fieldcontain">
					<span id="matchScout-label" class="property-label"><g:message code="match.matchScout.label" default="Match Scout" /></span>
					
				</li>
				</g:if>
				
				<table id="QuerterByQuarterScore" class="SimpleCleanTable">
					<thead>
						<tr>
							<th>&nbsp;</th>
							<th>1° Qtr.</th>
							<th>2° Qtr.</th>
							<th>3° Qtr.</th>
							<th>4° Qtr.</th>
							<g:if test="${matchInstance?.overtimesNumber}">
								<th>OTs (<span class="property-value" aria-labelledby="overtimesNumber-label"><g:fieldValue bean="${matchInstance}" field="overtimesNumber"/></span>)</th>
							</g:if>
							<th>Final</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><g:message code="match.teamA.label" default="Team A" /></th>
							<td><span class="property-value" aria-labelledby="firstQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="firstQtrTeamAScore"/></span></td>
							<td><span class="property-value" aria-labelledby="secondQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="secondQtrTeamAScore"/></span></td>
							<td><span class="property-value" aria-labelledby="thirdQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="thirdQtrTeamAScore"/></span></td>
							<td><span class="property-value" aria-labelledby="fourthQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="fourthQtrTeamAScore"/></span></td>
							<g:if test="${matchInstance?.overtimesNumber}">
								<td><span class="property-value" aria-labelledby="overtimesTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="overtimesTeamAScore"/></span></td>
							</g:if>
							<th><span class="property-value" aria-labelledby="finalTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="finalTeamAScore"/></span></th>						
						</tr>
						<tr>
							<th><g:message code="match.teamB.label" default="Team B" /></th>		
							<td><span class="property-value" aria-labelledby="firstQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="firstQtrTeamBScore"/></span></td>
							<td><span class="property-value" aria-labelledby="secondQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="secondQtrTeamBScore"/></span></td>
							<td><span class="property-value" aria-labelledby="thirdQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="thirdQtrTeamBScore"/></span></td>
							<td><span class="property-value" aria-labelledby="fourthQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="fourthQtrTeamBScore"/></span></td>
							<g:if test="${matchInstance?.overtimesNumber}">
								<td><span class="property-value" aria-labelledby="overtimesTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="overtimesTeamBScore"/></span></td>
							</g:if>
							<th><span class="property-value" aria-labelledby="finalTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="finalTeamBScore"/></span></th>					
						</tr>	
					</tbody>
				</table>				
			
				<g:if test="${matchInstance?.matchStats}">
					<span id="matchStats-label" class="property-label"><g:message code="match.matchStats.label" default="Match Stats" /></span>
					<table id="MatchStats" class="SimpleCleanTable">	
						<thead>
							<tr>
								<th>Player</th>
								<th>Minutes</th>
								<th>Grade</th>
								<th>Score</th>
							</tr>
						</thead>
						<tbody>			
						<g:each in="${matchInstance.matchStats}" var="m">
							<tr>
								<th><g:link controller="playerStatistics" action="show" id="${m.id}">${m?.player?.encodeAsHTML()}</g:link>
								</th>
								<td>${m?.totalMinutes}</td>
								<td>${m?.overallGrade}</td>
								<th>${m?.totalPoints}</th>
							</tr>
						</g:each>
						</tbody>
					</table>					
				</g:if>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${matchInstance?.id}" />
					<g:link class="edit" action="edit" id="${matchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
