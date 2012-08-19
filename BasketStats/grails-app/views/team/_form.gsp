<%@ page import="info.colleoni.basketstats.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${teamInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'coach', 'error')} ">
	<label for="coach">
		<g:message code="team.coach.label" default="Coach" />
		
	</label>
	<g:select id="coach" name="coach.id" from="${info.colleoni.basketstats.Person.list()}" optionKey="id" value="${teamInstance?.coach?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'executives', 'error')} ">
	<label for="executives">
		<g:message code="team.executives.label" default="Executives" />
		
	</label>
	<g:select name="executives" from="${info.colleoni.basketstats.Person.list()}" multiple="multiple" optionKey="id" size="5" value="${teamInstance?.executives*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="team.players.label" default="Players" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teamInstance?.players?}" var="p">
    <li><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="player" action="create" params="['team.id': teamInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'player.label', default: 'Player')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'season', 'error')} required">
	<label for="season">
		<g:message code="team.season.label" default="Season" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="season" name="season.id" from="${info.colleoni.basketstats.Season.list()}" optionKey="id" required="" value="${teamInstance?.season?.id}" class="many-to-one"/>
</div>

