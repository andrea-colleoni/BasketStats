<%@ page import="info.colleoni.basketstats.ChampionshipPhase" %>



<div class="fieldcontain ${hasErrors(bean: championshipPhaseInstance, field: 'championship', 'error')} required">
	<label for="championship">
		<g:message code="championshipPhase.championship.label" default="Championship" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="championship" name="championship.id" from="${info.colleoni.basketstats.Championship.list()}" optionKey="id" required="" value="${championshipPhaseInstance?.championship?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipPhaseInstance, field: 'groupage', 'error')} ">
	<label for="groupage">
		<g:message code="championshipPhase.groupage.label" default="Groupage" />
		
	</label>
	<g:textField name="groupage" value="${championshipPhaseInstance?.groupage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipPhaseInstance, field: 'phase', 'error')} ">
	<label for="phase">
		<g:message code="championshipPhase.phase.label" default="Phase" />
		
	</label>
	<g:textField name="phase" value="${championshipPhaseInstance?.phase}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipPhaseInstance, field: 'matches', 'error')} ">
	<label for="matches">
		<g:message code="championshipPhase.matches.label" default="Matches" />
		
	</label>
	<g:select name="matches" from="${info.colleoni.basketstats.Match.list()}" multiple="multiple" optionKey="id" size="5" value="${championshipPhaseInstance?.matches*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipPhaseInstance, field: 'rosters', 'error')} ">
	<label for="rosters">
		<g:message code="championshipPhase.rosters.label" default="Rosters" />
		
	</label>
	<g:select name="rosters" from="${info.colleoni.basketstats.Roster.list()}" multiple="multiple" optionKey="id" size="5" value="${championshipPhaseInstance?.rosters*.id}" class="many-to-many"/>
</div>

