<%@ page import="info.colleoni.basketstats.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'roleName', 'error')} ">
	<label for="roleName">
		<g:message code="role.roleName.label" default="Role Name" />
		
	</label>
	<g:textField name="roleName" value="${roleInstance?.roleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'rolePosition', 'error')} required">
	<label for="rolePosition">
		<g:message code="role.rolePosition.label" default="Role Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rolePosition" type="number" value="${roleInstance.rolePosition}" required=""/>
</div>

