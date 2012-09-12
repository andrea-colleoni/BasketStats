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

<div class="fieldcontain ${hasErrors(bean: seasonInstance, field: 'champioships', 'error')} ">
	<label for="champioships">
		<g:message code="season.champioships.label" default="Champioships" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${seasonInstance?.champioships?}" var="c">
    <li><g:link controller="championship" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="championship" action="create" params="['season.id': seasonInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'championship.label', default: 'Championship')])}</g:link>
</li>
</ul>

</div>

