<%@ page import="info.colleoni.basketstats.Roster" %>



<div class="fieldcontain ${hasErrors(bean: rosterInstance, field: 'championship', 'error')} required">
	<label for="championship">
		<g:message code="roster.championship.label" default="Championship" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="championship" name="championship.id" from="${info.colleoni.basketstats.Championship.list()}" optionKey="id" required="" value="${rosterInstance?.championship?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rosterInstance, field: 'team', 'error')} required">
	<label for="team">
		<g:message code="roster.team.label" default="Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="team" name="team.id" from="${info.colleoni.basketstats.Team.list()}" optionKey="id" required="" value="${rosterInstance?.team?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rosterInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="roster.players.label" default="Players" />
		
	</label>
	<g:select name="players" from="${info.colleoni.basketstats.Player.list()}" multiple="multiple" optionKey="id" size="5" value="${rosterInstance?.players*.id}" class="many-to-many"/>
</div>

