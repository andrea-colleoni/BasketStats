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
	<g:select id="teamA" name="teamA.id" from="${info.colleoni.basketstats.PlayerSet.list()}" optionKey="id" required="" value="${matchInstance?.teamA?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'teamB', 'error')} required">
	<label for="teamB">
		<g:message code="match.teamB.label" default="Team B" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teamB" name="teamB.id" from="${info.colleoni.basketstats.PlayerSet.list()}" optionKey="id" required="" value="${matchInstance?.teamB?.id}" class="many-to-one"/>
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

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'firstQtrTeamAScore', 'error')} required">
	<label for="firstQtrTeamAScore">
		<g:message code="match.firstQtrTeamAScore.label" default="First Qtr Team AS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="firstQtrTeamAScore" type="number" value="${matchInstance.firstQtrTeamAScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'firstQtrTeamBScore', 'error')} required">
	<label for="firstQtrTeamBScore">
		<g:message code="match.firstQtrTeamBScore.label" default="First Qtr Team BS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="firstQtrTeamBScore" type="number" value="${matchInstance.firstQtrTeamBScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'secondQtrTeamAScore', 'error')} required">
	<label for="secondQtrTeamAScore">
		<g:message code="match.secondQtrTeamAScore.label" default="Second Qtr Team AS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="secondQtrTeamAScore" type="number" value="${matchInstance.secondQtrTeamAScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'secondQtrTeamBScore', 'error')} required">
	<label for="secondQtrTeamBScore">
		<g:message code="match.secondQtrTeamBScore.label" default="Second Qtr Team BS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="secondQtrTeamBScore" type="number" value="${matchInstance.secondQtrTeamBScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'thirdQtrTeamAScore', 'error')} required">
	<label for="thirdQtrTeamAScore">
		<g:message code="match.thirdQtrTeamAScore.label" default="Third Qtr Team AS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="thirdQtrTeamAScore" type="number" value="${matchInstance.thirdQtrTeamAScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'thirdQtrTeamBScore', 'error')} required">
	<label for="thirdQtrTeamBScore">
		<g:message code="match.thirdQtrTeamBScore.label" default="Third Qtr Team BS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="thirdQtrTeamBScore" type="number" value="${matchInstance.thirdQtrTeamBScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'fourthQtrTeamAScore', 'error')} required">
	<label for="fourthQtrTeamAScore">
		<g:message code="match.fourthQtrTeamAScore.label" default="Fourth Qtr Team AS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fourthQtrTeamAScore" type="number" value="${matchInstance.fourthQtrTeamAScore}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'fourthQtrTeamBScore', 'error')} required">
	<label for="fourthQtrTeamBScore">
		<g:message code="match.fourthQtrTeamBScore.label" default="Fourth Qtr Team BS core" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fourthQtrTeamBScore" type="number" value="${matchInstance.fourthQtrTeamBScore}" required=""/>
</div>

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

