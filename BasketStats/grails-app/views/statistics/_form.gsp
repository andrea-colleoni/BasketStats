<%@ page import="info.colleoni.basketstats.Statistics" %>



<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'match', 'error')} required">
	<label for="match">
		<g:message code="statistics.match.label" default="Match" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="match" name="match.id" from="${info.colleoni.basketstats.Match.list()}" optionKey="id" required="" value="${statisticsInstance?.match?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'player', 'error')} required">
	<label for="player">
		<g:message code="statistics.player.label" default="Player" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="player" name="player.id" from="${info.colleoni.basketstats.Player.list()}" optionKey="id" required="" value="${statisticsInstance?.player?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'startingFive', 'error')} ">
	<label for="startingFive">
		<g:message code="statistics.startingFive.label" default="Starting Five" />
		
	</label>
	<g:checkBox name="startingFive" value="${statisticsInstance?.startingFive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'firstQtrMinutes', 'error')} required">
	<label for="firstQtrMinutes">
		<g:message code="statistics.firstQtrMinutes.label" default="First Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="firstQtrMinutes" type="number" value="${statisticsInstance.firstQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'secondQtrMinutes', 'error')} required">
	<label for="secondQtrMinutes">
		<g:message code="statistics.secondQtrMinutes.label" default="Second Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="secondQtrMinutes" type="number" value="${statisticsInstance.secondQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'thirdQtrMinutes', 'error')} required">
	<label for="thirdQtrMinutes">
		<g:message code="statistics.thirdQtrMinutes.label" default="Third Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="thirdQtrMinutes" type="number" value="${statisticsInstance.thirdQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'fourthQtrMinutes', 'error')} required">
	<label for="fourthQtrMinutes">
		<g:message code="statistics.fourthQtrMinutes.label" default="Fourth Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fourthQtrMinutes" type="number" value="${statisticsInstance.fourthQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'threePtsScored', 'error')} required">
	<label for="threePtsScored">
		<g:message code="statistics.threePtsScored.label" default="Three Pts Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="threePtsScored" type="number" value="${statisticsInstance.threePtsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'threePtsAttempts', 'error')} required">
	<label for="threePtsAttempts">
		<g:message code="statistics.threePtsAttempts.label" default="Three Pts Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="threePtsAttempts" type="number" value="${statisticsInstance.threePtsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'longDistanceShootsScored', 'error')} required">
	<label for="longDistanceShootsScored">
		<g:message code="statistics.longDistanceShootsScored.label" default="Long Distance Shoots Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longDistanceShootsScored" type="number" value="${statisticsInstance.longDistanceShootsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'longDistanceShootsAttempts', 'error')} required">
	<label for="longDistanceShootsAttempts">
		<g:message code="statistics.longDistanceShootsAttempts.label" default="Long Distance Shoots Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longDistanceShootsAttempts" type="number" value="${statisticsInstance.longDistanceShootsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'shortDistanceShootsScored', 'error')} required">
	<label for="shortDistanceShootsScored">
		<g:message code="statistics.shortDistanceShootsScored.label" default="Short Distance Shoots Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="shortDistanceShootsScored" type="number" value="${statisticsInstance.shortDistanceShootsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'shortDistanceShootsAttempts', 'error')} required">
	<label for="shortDistanceShootsAttempts">
		<g:message code="statistics.shortDistanceShootsAttempts.label" default="Short Distance Shoots Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="shortDistanceShootsAttempts" type="number" value="${statisticsInstance.shortDistanceShootsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'freeThrowsScored', 'error')} required">
	<label for="freeThrowsScored">
		<g:message code="statistics.freeThrowsScored.label" default="Free Throws Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="freeThrowsScored" type="number" value="${statisticsInstance.freeThrowsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'freeThrowsAttempts', 'error')} required">
	<label for="freeThrowsAttempts">
		<g:message code="statistics.freeThrowsAttempts.label" default="Free Throws Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="freeThrowsAttempts" type="number" value="${statisticsInstance.freeThrowsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'defensiveRebounds', 'error')} required">
	<label for="defensiveRebounds">
		<g:message code="statistics.defensiveRebounds.label" default="Defensive Rebounds" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="defensiveRebounds" type="number" value="${statisticsInstance.defensiveRebounds}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'offensiveRebounds', 'error')} required">
	<label for="offensiveRebounds">
		<g:message code="statistics.offensiveRebounds.label" default="Offensive Rebounds" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="offensiveRebounds" type="number" value="${statisticsInstance.offensiveRebounds}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'steals', 'error')} required">
	<label for="steals">
		<g:message code="statistics.steals.label" default="Steals" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="steals" type="number" value="${statisticsInstance.steals}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'turnovers', 'error')} required">
	<label for="turnovers">
		<g:message code="statistics.turnovers.label" default="Turnovers" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turnovers" type="number" value="${statisticsInstance.turnovers}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'assists', 'error')} required">
	<label for="assists">
		<g:message code="statistics.assists.label" default="Assists" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assists" type="number" value="${statisticsInstance.assists}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'blocksMade', 'error')} required">
	<label for="blocksMade">
		<g:message code="statistics.blocksMade.label" default="Blocks Made" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="blocksMade" type="number" value="${statisticsInstance.blocksMade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'blocksSuffered', 'error')} required">
	<label for="blocksSuffered">
		<g:message code="statistics.blocksSuffered.label" default="Blocks Suffered" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="blocksSuffered" type="number" value="${statisticsInstance.blocksSuffered}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'foulsMade', 'error')} required">
	<label for="foulsMade">
		<g:message code="statistics.foulsMade.label" default="Fouls Made" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foulsMade" type="number" value="${statisticsInstance.foulsMade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: statisticsInstance, field: 'foulsSuffered', 'error')} required">
	<label for="foulsSuffered">
		<g:message code="statistics.foulsSuffered.label" default="Fouls Suffered" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foulsSuffered" type="number" value="${statisticsInstance.foulsSuffered}" required=""/>
</div>

