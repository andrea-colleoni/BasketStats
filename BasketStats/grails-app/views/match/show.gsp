
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
			
				<g:if test="${matchInstance?.teamA}">
				<li class="fieldcontain">
					<span id="teamA-label" class="property-label"><g:message code="match.teamA.label" default="Team A" /></span>
					
						<span class="property-value" aria-labelledby="teamA-label"><g:link controller="matchCall" action="show" id="${matchInstance?.teamA?.id}">${matchInstance?.teamA?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.teamB}">
				<li class="fieldcontain">
					<span id="teamB-label" class="property-label"><g:message code="match.teamB.label" default="Team B" /></span>
					
						<span class="property-value" aria-labelledby="teamB-label"><g:link controller="matchCall" action="show" id="${matchInstance?.teamB?.id}">${matchInstance?.teamB?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
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
			
				<g:if test="${matchInstance?.firstQtrTeamAScore}">
				<li class="fieldcontain">
					<span id="firstQtrTeamAScore-label" class="property-label"><g:message code="match.firstQtrTeamAScore.label" default="First Qtr Team AS core" /></span>
					
						<span class="property-value" aria-labelledby="firstQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="firstQtrTeamAScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.firstQtrTeamBScore}">
				<li class="fieldcontain">
					<span id="firstQtrTeamBScore-label" class="property-label"><g:message code="match.firstQtrTeamBScore.label" default="First Qtr Team BS core" /></span>
					
						<span class="property-value" aria-labelledby="firstQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="firstQtrTeamBScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.secondQtrTeamAScore}">
				<li class="fieldcontain">
					<span id="secondQtrTeamAScore-label" class="property-label"><g:message code="match.secondQtrTeamAScore.label" default="Second Qtr Team AS core" /></span>
					
						<span class="property-value" aria-labelledby="secondQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="secondQtrTeamAScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.secondQtrTeamBScore}">
				<li class="fieldcontain">
					<span id="secondQtrTeamBScore-label" class="property-label"><g:message code="match.secondQtrTeamBScore.label" default="Second Qtr Team BS core" /></span>
					
						<span class="property-value" aria-labelledby="secondQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="secondQtrTeamBScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.thirdQtrTeamAScore}">
				<li class="fieldcontain">
					<span id="thirdQtrTeamAScore-label" class="property-label"><g:message code="match.thirdQtrTeamAScore.label" default="Third Qtr Team AS core" /></span>
					
						<span class="property-value" aria-labelledby="thirdQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="thirdQtrTeamAScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.thirdQtrTeamBScore}">
				<li class="fieldcontain">
					<span id="thirdQtrTeamBScore-label" class="property-label"><g:message code="match.thirdQtrTeamBScore.label" default="Third Qtr Team BS core" /></span>
					
						<span class="property-value" aria-labelledby="thirdQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="thirdQtrTeamBScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.fourthQtrTeamAScore}">
				<li class="fieldcontain">
					<span id="fourthQtrTeamAScore-label" class="property-label"><g:message code="match.fourthQtrTeamAScore.label" default="Fourth Qtr Team AS core" /></span>
					
						<span class="property-value" aria-labelledby="fourthQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="fourthQtrTeamAScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.fourthQtrTeamBScore}">
				<li class="fieldcontain">
					<span id="fourthQtrTeamBScore-label" class="property-label"><g:message code="match.fourthQtrTeamBScore.label" default="Fourth Qtr Team BS core" /></span>
					
						<span class="property-value" aria-labelledby="fourthQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="fourthQtrTeamBScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.overtimesNumber}">
				<li class="fieldcontain">
					<span id="overtimesNumber-label" class="property-label"><g:message code="match.overtimesNumber.label" default="Overtimes Number" /></span>
					
						<span class="property-value" aria-labelledby="overtimesNumber-label"><g:fieldValue bean="${matchInstance}" field="overtimesNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.overtimesTeamAScore}">
				<li class="fieldcontain">
					<span id="overtimesTeamAScore-label" class="property-label"><g:message code="match.overtimesTeamAScore.label" default="Overtimes Team AS core" /></span>
					
						<span class="property-value" aria-labelledby="overtimesTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="overtimesTeamAScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.overtimesTeamBScore}">
				<li class="fieldcontain">
					<span id="overtimesTeamBScore-label" class="property-label"><g:message code="match.overtimesTeamBScore.label" default="Overtimes Team BS core" /></span>
					
						<span class="property-value" aria-labelledby="overtimesTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="overtimesTeamBScore"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.matchStats}">
				<li class="fieldcontain">
					<span id="matchStats-label" class="property-label"><g:message code="match.matchStats.label" default="Match Stats" /></span>
					
						<g:each in="${matchInstance.matchStats}" var="m">
						<span class="property-value" aria-labelledby="matchStats-label"><g:link controller="playerStatistics" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
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
