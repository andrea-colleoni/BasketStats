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
	
<ul class="one-to-many">
<g:each in="${championshipPhaseInstance?.matches?}" var="m">
    <li><g:link controller="match" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="match" action="create" params="['championshipPhase.id': championshipPhaseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'match.label', default: 'Match')])}</g:link>
</li>
</ul>

</div>

