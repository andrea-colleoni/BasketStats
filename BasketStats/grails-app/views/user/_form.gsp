<%@ page import="info.colleoni.basketstats.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'subscriptionDate', 'error')} required">
	<label for="subscriptionDate">
		<g:message code="user.subscriptionDate.label" default="Subscription Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="subscriptionDate" precision="day"  value="${userInstance?.subscriptionDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="user.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${userInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'expired', 'error')} ">
	<label for="expired">
		<g:message code="user.expired.label" default="Expired" />
		
	</label>
	<g:checkBox name="expired" value="${userInstance?.expired}" />
</div>

