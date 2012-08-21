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

