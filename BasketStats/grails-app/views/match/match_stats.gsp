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
			<h1>
				<g:link controller="season" action="show" id="${matchInstance?.season?.id}">${matchInstance?.season?.encodeAsHTML()}</g:link>
				<br />
				<span class="property-value" aria-labelledby="phase-label"><g:fieldValue bean="${matchInstance}" field="phase"/></span>
				-
				<span id="round-label" class="property-label"><g:message code="match.round.label" default="Round" /></span>
						<span class="property-value" aria-labelledby="round-label"><g:fieldValue bean="${matchInstance}" field="round"/></span>						
				<br />
				<span class="property-value" aria-labelledby="matchDate-label"><g:formatDate date="${matchInstance?.matchDate}" type="datetime" style="LONG" timeStyle="SHORT" /></span>
				<g:if test="${matchInstance?.location}">
				-
				<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${matchInstance}" field="location"/></span>
				</g:if>
				<g:if test="${matchInstance?.referee}">
				<br />
				<span id="referee-label" class="property-label"><g:message code="match.referee.label" default="Referee" /></span>
						<span class="property-value" aria-labelledby="referee-label"><g:link controller="person" action="show" id="${matchInstance?.referee?.id}">${matchInstance?.referee?.encodeAsHTML()}</g:link></span>
				</g:if>
			</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>	
					
			<table id="matchStats-table">
				<tr>
					<td>Team</td>
					<td>1 Qtr.</td>
					<td>2 Qtr.</td>
					<td>3 Qtr.</td>
					<td>4 Qtr.</td>
					<g:if test="${matchInstance?.overtimesNumber > 0}">
						<td>OT (<span class="property-value" aria-labelledby="overtimesNumber-label"><g:fieldValue bean="${matchInstance}" field="overtimesNumber"/></span>)</td>
					</g:if>
					<td>Final</td>
				</tr>
				<tr>
					<td><g:link controller="team" action="show" id="${matchInstance?.teamA?.id}">${matchInstance?.teamA?.name?.encodeAsHTML()}</g:link></td>
					<td><span class="property-value" aria-labelledby="firstQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="firstQtrTeamAScore"/></span></td>
					<td><span class="property-value" aria-labelledby="secondQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="secondQtrTeamAScore"/> [+${matchInstance.secondQtrTeamAScore - matchInstance.firstQtrTeamAScore}]</span></td>
					<td><span class="property-value" aria-labelledby="thirdQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="thirdQtrTeamAScore"/> [+${matchInstance.thirdQtrTeamAScore - matchInstance.secondQtrTeamAScore}]</span></td>
					<td><span class="property-value" aria-labelledby="fourthQtrTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="fourthQtrTeamAScore"/> [+${matchInstance.fourthQtrTeamAScore - matchInstance.thirdQtrTeamAScore}]</span></td>
					<g:if test="${matchInstance?.overtimesNumber > 0}">
					<td><g:if test="${matchInstance?.overtimesTeamAScore}">
							<span class="property-value" aria-labelledby="overtimesTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="overtimesTeamAScore"/> [+${matchInstance.overtimesTeamAScore - matchInstance.fourthQtrTeamAScore}]</span>
						</g:if></td>
					</g:if>
					<td><span class="property-value" aria-labelledby="finalTeamAScore-label"><g:fieldValue bean="${matchInstance}" field="finalTeamAScore"/></span></td>
				</tr>
				<tr>
					<td><g:link controller="team" action="show" id="${matchInstance?.teamB?.id}">${matchInstance?.teamB?.name?.encodeAsHTML()}</g:link></td>
					<td><span class="property-value" aria-labelledby="firstQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="firstQtrTeamBScore"/></span></td>
					<td><span class="property-value" aria-labelledby="secondQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="secondQtrTeamBScore"/> [+${matchInstance.secondQtrTeamBScore - matchInstance.firstQtrTeamBScore}]</span></td>
					<td><span class="property-value" aria-labelledby="thirdQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="thirdQtrTeamBScore"/> [+${matchInstance.thirdQtrTeamBScore - matchInstance.secondQtrTeamBScore}]</span></td>
					<td><span class="property-value" aria-labelledby="fourthQtrTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="fourthQtrTeamBScore"/> [+${matchInstance.fourthQtrTeamBScore - matchInstance.thirdQtrTeamBScore}]</span></td>
					<g:if test="${matchInstance?.overtimesNumber > 0}">
					<td><g:if test="${matchInstance?.overtimesTeamBScore}">
						<span class="property-value" aria-labelledby="overtimesTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="overtimesTeamBScore"/> [+${matchInstance.overtimesTeamBScore - matchInstance.fourthQtrTeamBScore}]</span>
						</g:if></td>
					</g:if>						
					<td><span class="property-value" aria-labelledby="finalTeamBScore-label"><g:fieldValue bean="${matchInstance}" field="finalTeamBScore"/></span></td>
				</tr>
			</table>
			<ol class="property-list match">
		
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
				
				<g:if test="${matchInstance?.teamAStatistics}">
					<li class="fieldcontain">
					Team A has stats
					</li>
				</g:if>
				
				<g:if test="${matchInstance?.teamBStatistics}">
					<li class="fieldcontain">
					Team B has stats
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
