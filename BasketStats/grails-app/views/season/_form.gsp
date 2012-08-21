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

