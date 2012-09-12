<%@ page import="info.colleoni.basketstats.Tenant" %>



<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tenant.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tenantInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tenantInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="tenant.users.label" default="Users" />
		
	</label>
	<g:select name="users" from="${info.colleoni.basketstats.User.list()}" multiple="multiple" optionKey="id" size="5" value="${tenantInstance?.users*.id}" class="many-to-many"/>
</div>

