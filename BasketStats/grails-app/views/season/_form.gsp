<%@ page import="info.colleoni.basketstats.Season" %>



<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'startYear', 'error')} required">
	<label for="startYear">
		<g:message code="season.startYear.label" default="Start Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="startYear" type="number" value="${seasonInstance.startYear}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'endYear', 'error')} required">
	<label for="endYear">
		<g:message code="season.endYear.label" default="End Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="endYear" type="number" value="${seasonInstance.endYear}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'division', 'error')} ">
	<label for="division">
		<g:message code="season.division.label" default="Division" />
		
	</label>
	<g:textField name="division" value="${seasonInstance?.division}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'groupage', 'error')} ">
	<label for="groupage">
		<g:message code="season.groupage.label" default="Groupage" />
		
	</label>
	<g:textField name="groupage" value="${seasonInstance?.groupage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'phase', 'error')} ">
	<label for="phase">
		<g:message code="season.phase.label" default="Phase" />
		
	</label>
	<g:textField name="phase" value="${seasonInstance?.phase}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'matches', 'error')} ">
	<label for="matches">
		<g:message code="season.matches.label" default="Matches" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${seasonInstance?.matches?}" var="m">
    <li><g:link controller="match" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="match" action="create" params="['season.id': seasonInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'match.label', default: 'Match')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'teams', 'error')} ">
	<label for="teams">
		<g:message code="season.teams.label" default="Teams" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${seasonInstance?.teams?}" var="t">
    <li><g:link controller="team" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="team" action="create" params="['season.id': seasonInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'team.label', default: 'Team')])}</g:link>
</li>
</ul>

</div>

