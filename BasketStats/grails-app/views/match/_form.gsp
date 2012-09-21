<%@ page import="info.colleoni.basketstats.Match" %>



<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'championshipPhase', 'error')} required">
	<label for="championshipPhase">
		<g:message code="match.championshipPhase.label" default="Championship Phase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="championshipPhase" name="championshipPhase.id" from="${info.colleoni.basketstats.ChampionshipPhase.list()}" optionKey="id" required="" value="${matchInstance?.championshipPhase?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'teamA', 'error')} required">
	<label for="teamA">
		<g:message code="match.teamA.label" default="Team A" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teamA" name="teamA.id" from="${info.colleoni.basketstats.Team.list()}" optionKey="id" required="" value="${matchInstance?.teamA?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'teamB', 'error')} required">
	<label for="teamB">
		<g:message code="match.teamB.label" default="Team B" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teamB" name="teamB.id" from="${info.colleoni.basketstats.Team.list()}" optionKey="id" required="" value="${matchInstance?.teamB?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'matchDate', 'error')} required">
	<label for="matchDate">
		<g:message code="match.matchDate.label" default="Match Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="matchDate" precision="minute"  value="${matchInstance?.matchDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'round', 'error')} required">
	<label for="round">
		<g:message code="match.round.label" default="Round" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="round" type="number" value="${matchInstance.round}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'phase', 'error')} ">
	<label for="phase">
		<g:message code="match.phase.label" default="Phase" />
		
	</label>
	<g:select name="phase" from="${matchInstance.constraints.phase.inList}" value="${matchInstance?.phase}" valueMessagePrefix="match.phase" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="match.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${matchInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'referee', 'error')} ">
	<label for="referee">
		<g:message code="match.referee.label" default="Referee" />
		
	</label>
	<g:select id="referee" name="referee.id" from="${info.colleoni.basketstats.Person.list()}" optionKey="id" value="${matchInstance?.referee?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'matchReport', 'error')} ">
	<label for="matchReport">
		<g:message code="match.matchReport.label" default="Match Report" />
		
	</label>
	<input type="file" id="matchReport" name="matchReport" />
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'matchScout', 'error')} ">
	<label for="matchScout">
		<g:message code="match.matchScout.label" default="Match Scout" />
		
	</label>
	<input type="file" id="matchScout" name="matchScout" />
</div>
<table width="100%" id="QuerterByQuarterScore">
	<thead>
		<tr>
			<th>&nbsp;</th>
			<th>1° Qtr.</th>
			<th>2° Qtr.</th>
			<th>3° Qtr.</th>
			<th>4° Qtr.</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th><g:message code="match.teamA.label" default="Team A" /></th>
			<td><g:field name="firstQtrTeamAScore" type="number" value="${matchInstance.firstQtrTeamAScore}" required=""/></td>
			<td><g:field name="secondQtrTeamAScore" type="number" value="${matchInstance.secondQtrTeamAScore}" required=""/></td>
			<td><g:field name="thirdQtrTeamAScore" type="number" value="${matchInstance.thirdQtrTeamAScore}" required=""/></td>
			<td><g:field name="fourthQtrTeamAScore" type="number" value="${matchInstance.fourthQtrTeamAScore}" required=""/></td>
		</tr>
		<tr>
			<th><g:message code="match.teamB.label" default="Team B" /></th>		
			<td><g:field name="firstQtrTeamBScore" type="number" value="${matchInstance.firstQtrTeamBScore}" required=""/></td>
			<td><g:field name="secondQtrTeamBScore" type="number" value="${matchInstance.secondQtrTeamBScore}" required=""/></td>
			<td><g:field name="thirdQtrTeamBScore" type="number" value="${matchInstance.thirdQtrTeamBScore}" required=""/></td>
			<td><g:field name="fourthQtrTeamBScore" type="number" value="${matchInstance.fourthQtrTeamBScore}" required=""/></td>
		</tr>	
	</tbody>
</table>


<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'overtimesNumber', 'error')} required">
	<label for="overtimesNumber">
		<g:message code="match.overtimesNumber.label" default="Overtimes Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="overtimesNumber" type="number" value="${matchInstance.overtimesNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'overtimesTeamAScore', 'error')} required">
	<label for="overtimesTeamAScore">
		<g:message code="match.overtimesTeamAScore.label" default="Overtimes Team AS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="overtimesTeamAScore" type="number" value="${matchInstance.overtimesTeamAScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'overtimesTeamBScore', 'error')} required">
	<label for="overtimesTeamBScore">
		<g:message code="match.overtimesTeamBScore.label" default="Overtimes Team BS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="overtimesTeamBScore" type="number" value="${matchInstance.overtimesTeamBScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'matchStats', 'error')} ">
	<label for="matchStats">
		<g:message code="match.matchStats.label" default="Match Stats" />
		
	</label>
	<g:select name="matchStats" from="${info.colleoni.basketstats.PlayerStatistics.list()}" multiple="multiple" optionKey="id" size="5" value="${matchInstance?.matchStats*.id}" class="many-to-many"/>
</div>

