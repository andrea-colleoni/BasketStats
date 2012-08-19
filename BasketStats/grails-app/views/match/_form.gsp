<%@ page import="info.colleoni.basketstats.Match" %>



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
	<g:datePicker name="matchDate" precision="day"  value="${matchInstance?.matchDate}"  />
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

<div class="fieldcontain ${hasErrors(bean: matchInstance, field: 'season', 'error')} required">
	<label for="season">
		<g:message code="match.season.label" default="Season" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="season" name="season.id" from="${info.colleoni.basketstats.Season.list()}" optionKey="id" required="" value="${matchInstance?.season?.id}" class="many-to-one"/>
</div>

