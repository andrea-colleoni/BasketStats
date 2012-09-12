<%@ page import="info.colleoni.basketstats.PlayerSet" %>



<div class="fieldcontain ${hasErrors(bean: playerSetInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="playerSet.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="30" value="${playerSetInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerSetInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="playerSet.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="2000" value="${playerSetInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerSetInstance, field: 'roster', 'error')} required">
	<label for="roster">
		<g:message code="playerSet.roster.label" default="Roster" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roster" name="roster.id" from="${info.colleoni.basketstats.Roster.list()}" optionKey="id" required="" value="${playerSetInstance?.roster?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerSetInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="playerSet.players.label" default="Players" />
		
	</label>
	<g:select name="players" from="${info.colleoni.basketstats.Player.list()}" multiple="multiple" optionKey="id" size="5" value="${playerSetInstance?.players*.id}" class="many-to-many"/>
</div>

