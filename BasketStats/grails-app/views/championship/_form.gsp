<%@ page import="info.colleoni.basketstats.Championship" %>



<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'season', 'error')} required">
	<label for="season">
		<g:message code="championship.season.label" default="Season" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="season" name="season.id" from="${info.colleoni.basketstats.Season.list()}" optionKey="id" required="" value="${championshipInstance?.season?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'division', 'error')} ">
	<label for="division">
		<g:message code="championship.division.label" default="Division" />
		
	</label>
	<g:textField name="division" value="${championshipInstance?.division}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: championshipInstance, field: 'champioshipPhases', 'error')} ">
	<label for="champioshipPhases">
		<g:message code="championship.champioshipPhases.label" default="Champioship Phases" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${championshipInstance?.champioshipPhases?}" var="c">
    <li><g:link controller="championshipPhase" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="championshipPhase" action="create" params="['championship.id': championshipInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase')])}</g:link>
</li>
</ul>

</div>

