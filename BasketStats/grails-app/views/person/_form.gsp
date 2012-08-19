<%@ page import="info.colleoni.basketstats.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'fullname', 'error')} ">
	<label for="fullname">
		<g:message code="person.fullname.label" default="Fullname" />
		
	</label>
	<g:textField name="fullname" value="${personInstance?.fullname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="person.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${personInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="person.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" value="${personInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'streetAddress', 'error')} ">
	<label for="streetAddress">
		<g:message code="person.streetAddress.label" default="Street Address" />
		
	</label>
	<g:textField name="streetAddress" value="${personInstance?.streetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="person.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${personInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="person.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${personInstance?.zipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'province', 'error')} ">
	<label for="province">
		<g:message code="person.province.label" default="Province" />
		
	</label>
	<g:textField name="province" value="${personInstance?.province}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="person.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="person.bio.label" default="Bio" />
		
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="5000" value="${personInstance?.bio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="person.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${info.colleoni.basketstats.User.list()}" optionKey="id" value="${personInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

