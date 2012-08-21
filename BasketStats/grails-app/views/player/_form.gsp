<%@ page import="info.colleoni.basketstats.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="player.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${info.colleoni.basketstats.Person.list()}" optionKey="id" required="" value="${playerInstance?.person?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'shirtNumber', 'error')} ">
	<label for="shirtNumber">
		<g:message code="player.shirtNumber.label" default="Shirt Number" />
		
	</label>
	<g:textField name="shirtNumber" value="${playerInstance?.shirtNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'injuried', 'error')} ">
	<label for="injuried">
		<g:message code="player.injuried.label" default="Injuried" />
		
	</label>
	<g:checkBox name="injuried" value="${playerInstance?.injuried}" />
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'playerStats', 'error')} ">
	<label for="playerStats">
		<g:message code="player.playerStats.label" default="Player Stats" />
		
	</label>
	<g:select name="playerStats" from="${info.colleoni.basketstats.PlayerStatistics.list()}" multiple="multiple" optionKey="id" size="5" value="${playerInstance?.playerStats*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="player.roles.label" default="Roles" />
		
	</label>
	<g:select name="roles" from="${info.colleoni.basketstats.Role.list()}" multiple="multiple" optionKey="id" size="5" value="${playerInstance?.roles*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'rosters', 'error')} ">
	<label for="rosters">
		<g:message code="player.rosters.label" default="Rosters" />
		
	</label>
	
</div>

