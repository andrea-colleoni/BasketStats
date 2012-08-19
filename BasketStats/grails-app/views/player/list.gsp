
<%@ page import="info.colleoni.basketstats.Player" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-player" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fullname" title="${message(code: 'player.fullname.label', default: 'Fullname')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'player.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'player.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="streetAddress" title="${message(code: 'player.streetAddress.label', default: 'Street Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'player.city.label', default: 'City')}" />
					
						<g:sortableColumn property="zipCode" title="${message(code: 'player.zipCode.label', default: 'Zip Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playerInstanceList}" status="i" var="playerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playerInstance.id}">${fieldValue(bean: playerInstance, field: "fullname")}</g:link></td>
					
						<td>${fieldValue(bean: playerInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "phoneNumber")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "streetAddress")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "zipCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
