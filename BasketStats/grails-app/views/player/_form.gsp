<%@ page import="info.colleoni.basketstats.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'fullname', 'error')} ">
	<label for="fullname">
		<g:message code="player.fullname.label" default="Fullname" />
		
	</label>
	<g:textField name="fullname" value="${playerInstance?.fullname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="player.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${playerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="player.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" value="${playerInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'streetAddress', 'error')} ">
	<label for="streetAddress">
		<g:message code="player.streetAddress.label" default="Street Address" />
		
	</label>
	<g:textField name="streetAddress" value="${playerInstance?.streetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="player.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${playerInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="player.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${playerInstance?.zipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'province', 'error')} ">
	<label for="province">
		<g:message code="player.province.label" default="Province" />
		
	</label>
	<g:textField name="province" value="${playerInstance?.province}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="player.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="player.bio.label" default="Bio" />
		
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="5000" value="${playerInstance?.bio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="player.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${info.colleoni.basketstats.User.list()}" optionKey="id" value="${playerInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'shirtNumber', 'error')} ">
	<label for="shirtNumber">
		<g:message code="player.shirtNumber.label" default="Shirt Number" />
		
	</label>
	<g:textField name="shirtNumber" value="${playerInstance?.shirtNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="player.role.label" default="Role" />
		
	</label>
	<g:select name="role" from="${playerInstance.constraints.role.inList}" value="${playerInstance?.role}" valueMessagePrefix="player.role" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'team', 'error')} required">
	<label for="team">
		<g:message code="player.team.label" default="Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="team" name="team.id" from="${info.colleoni.basketstats.Team.list()}" optionKey="id" required="" value="${playerInstance?.team?.id}" class="many-to-one"/>
</div>

