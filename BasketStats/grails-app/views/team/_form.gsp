<%@ page import="info.colleoni.basketstats.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${teamInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'coaches', 'error')} ">
	<label for="coaches">
		<g:message code="team.coaches.label" default="Coaches" />
		
	</label>
	<g:select name="coaches" from="${info.colleoni.basketstats.Person.list()}" multiple="multiple" optionKey="id" size="5" value="${teamInstance?.coaches*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'executives', 'error')} ">
	<label for="executives">
		<g:message code="team.executives.label" default="Executives" />
		
	</label>
	<g:select name="executives" from="${info.colleoni.basketstats.Person.list()}" multiple="multiple" optionKey="id" size="5" value="${teamInstance?.executives*.id}" class="many-to-many"/>
</div>

