<%@ page import="info.colleoni.basketstats.MatchCall" %>



<div class="fieldcontain ${hasErrors(bean: matchCallInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="matchCall.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="30" value="${matchCallInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchCallInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="matchCall.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="2000" value="${matchCallInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchCallInstance, field: 'roster', 'error')} required">
	<label for="roster">
		<g:message code="matchCall.roster.label" default="Roster" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roster" name="roster.id" from="${info.colleoni.basketstats.Roster.list()}" optionKey="id" required="" value="${matchCallInstance?.roster?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: matchCallInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="matchCall.players.label" default="Players" />
		
	</label>
	<g:select name="players" from="${info.colleoni.basketstats.Player.list()}" multiple="multiple" optionKey="id" size="5" value="${matchCallInstance?.players*.id}" class="many-to-many"/>
</div>

