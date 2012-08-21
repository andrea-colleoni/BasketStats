<%@ page import="info.colleoni.basketstats.PlayerStatistics" %>



<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'match', 'error')} required">
	<label for="match">
		<g:message code="playerStatistics.match.label" default="Match" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="match" name="match.id" from="${info.colleoni.basketstats.Match.list()}" optionKey="id" required="" value="${playerStatisticsInstance?.match?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'roster', 'error')} required">
	<label for="roster">
		<g:message code="playerStatistics.roster.label" default="Roster" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roster" name="roster.id" from="${info.colleoni.basketstats.Roster.list()}" optionKey="id" required="" value="${playerStatisticsInstance?.roster?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'player', 'error')} required">
	<label for="player">
		<g:message code="playerStatistics.player.label" default="Player" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="player" name="player.id" from="${info.colleoni.basketstats.Player.list()}" optionKey="id" required="" value="${playerStatisticsInstance?.player?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'startingFive', 'error')} ">
	<label for="startingFive">
		<g:message code="playerStatistics.startingFive.label" default="Starting Five" />
		
	</label>
	<g:checkBox name="startingFive" value="${playerStatisticsInstance?.startingFive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'defenseGrade', 'error')} required">
	<label for="defenseGrade">
		<g:message code="playerStatistics.defenseGrade.label" default="Defense Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="defenseGrade" value="${fieldValue(bean: playerStatisticsInstance, field: 'defenseGrade')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'offenseGrade', 'error')} required">
	<label for="offenseGrade">
		<g:message code="playerStatistics.offenseGrade.label" default="Offense Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="offenseGrade" value="${fieldValue(bean: playerStatisticsInstance, field: 'offenseGrade')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'overallGrade', 'error')} required">
	<label for="overallGrade">
		<g:message code="playerStatistics.overallGrade.label" default="Overall Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="overallGrade" value="${fieldValue(bean: playerStatisticsInstance, field: 'overallGrade')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="playerStatistics.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="5000" value="${playerStatisticsInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'firstQtrMinutes', 'error')} required">
	<label for="firstQtrMinutes">
		<g:message code="playerStatistics.firstQtrMinutes.label" default="First Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="firstQtrMinutes" type="number" value="${playerStatisticsInstance.firstQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'secondQtrMinutes', 'error')} required">
	<label for="secondQtrMinutes">
		<g:message code="playerStatistics.secondQtrMinutes.label" default="Second Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="secondQtrMinutes" type="number" value="${playerStatisticsInstance.secondQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'thirdQtrMinutes', 'error')} required">
	<label for="thirdQtrMinutes">
		<g:message code="playerStatistics.thirdQtrMinutes.label" default="Third Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="thirdQtrMinutes" type="number" value="${playerStatisticsInstance.thirdQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'fourthQtrMinutes', 'error')} required">
	<label for="fourthQtrMinutes">
		<g:message code="playerStatistics.fourthQtrMinutes.label" default="Fourth Qtr Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fourthQtrMinutes" type="number" value="${playerStatisticsInstance.fourthQtrMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'totalMinutes', 'error')} required">
	<label for="totalMinutes">
		<g:message code="playerStatistics.totalMinutes.label" default="Total Minutes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalMinutes" type="number" value="${playerStatisticsInstance.totalMinutes}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'threePtsScored', 'error')} required">
	<label for="threePtsScored">
		<g:message code="playerStatistics.threePtsScored.label" default="Three Pts Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="threePtsScored" type="number" value="${playerStatisticsInstance.threePtsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'threePtsAttempts', 'error')} required">
	<label for="threePtsAttempts">
		<g:message code="playerStatistics.threePtsAttempts.label" default="Three Pts Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="threePtsAttempts" type="number" value="${playerStatisticsInstance.threePtsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'longDistanceShootsScored', 'error')} required">
	<label for="longDistanceShootsScored">
		<g:message code="playerStatistics.longDistanceShootsScored.label" default="Long Distance Shoots Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longDistanceShootsScored" type="number" value="${playerStatisticsInstance.longDistanceShootsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'longDistanceShootsAttempts', 'error')} required">
	<label for="longDistanceShootsAttempts">
		<g:message code="playerStatistics.longDistanceShootsAttempts.label" default="Long Distance Shoots Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longDistanceShootsAttempts" type="number" value="${playerStatisticsInstance.longDistanceShootsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'shortDistanceShootsScored', 'error')} required">
	<label for="shortDistanceShootsScored">
		<g:message code="playerStatistics.shortDistanceShootsScored.label" default="Short Distance Shoots Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="shortDistanceShootsScored" type="number" value="${playerStatisticsInstance.shortDistanceShootsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'shortDistanceShootsAttempts', 'error')} required">
	<label for="shortDistanceShootsAttempts">
		<g:message code="playerStatistics.shortDistanceShootsAttempts.label" default="Short Distance Shoots Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="shortDistanceShootsAttempts" type="number" value="${playerStatisticsInstance.shortDistanceShootsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'freeThrowsScored', 'error')} required">
	<label for="freeThrowsScored">
		<g:message code="playerStatistics.freeThrowsScored.label" default="Free Throws Scored" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="freeThrowsScored" type="number" value="${playerStatisticsInstance.freeThrowsScored}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'freeThrowsAttempts', 'error')} required">
	<label for="freeThrowsAttempts">
		<g:message code="playerStatistics.freeThrowsAttempts.label" default="Free Throws Attempts" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="freeThrowsAttempts" type="number" value="${playerStatisticsInstance.freeThrowsAttempts}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'defensiveRebounds', 'error')} required">
	<label for="defensiveRebounds">
		<g:message code="playerStatistics.defensiveRebounds.label" default="Defensive Rebounds" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="defensiveRebounds" type="number" value="${playerStatisticsInstance.defensiveRebounds}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'offensiveRebounds', 'error')} required">
	<label for="offensiveRebounds">
		<g:message code="playerStatistics.offensiveRebounds.label" default="Offensive Rebounds" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="offensiveRebounds" type="number" value="${playerStatisticsInstance.offensiveRebounds}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'steals', 'error')} required">
	<label for="steals">
		<g:message code="playerStatistics.steals.label" default="Steals" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="steals" type="number" value="${playerStatisticsInstance.steals}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'turnovers', 'error')} required">
	<label for="turnovers">
		<g:message code="playerStatistics.turnovers.label" default="Turnovers" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turnovers" type="number" value="${playerStatisticsInstance.turnovers}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'assists', 'error')} required">
	<label for="assists">
		<g:message code="playerStatistics.assists.label" default="Assists" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assists" type="number" value="${playerStatisticsInstance.assists}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'blocksMade', 'error')} required">
	<label for="blocksMade">
		<g:message code="playerStatistics.blocksMade.label" default="Blocks Made" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="blocksMade" type="number" value="${playerStatisticsInstance.blocksMade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'blocksSuffered', 'error')} required">
	<label for="blocksSuffered">
		<g:message code="playerStatistics.blocksSuffered.label" default="Blocks Suffered" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="blocksSuffered" type="number" value="${playerStatisticsInstance.blocksSuffered}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'foulsMade', 'error')} required">
	<label for="foulsMade">
		<g:message code="playerStatistics.foulsMade.label" default="Fouls Made" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foulsMade" type="number" value="${playerStatisticsInstance.foulsMade}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'foulsSuffered', 'error')} required">
	<label for="foulsSuffered">
		<g:message code="playerStatistics.foulsSuffered.label" default="Fouls Suffered" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foulsSuffered" type="number" value="${playerStatisticsInstance.foulsSuffered}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'expulsion', 'error')} ">
	<label for="expulsion">
		<g:message code="playerStatistics.expulsion.label" default="Expulsion" />
		
	</label>
	<g:checkBox name="expulsion" value="${playerStatisticsInstance?.expulsion}" />
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'technicalFouls', 'error')} required">
	<label for="technicalFouls">
		<g:message code="playerStatistics.technicalFouls.label" default="Technical Fouls" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="technicalFouls" type="number" value="${playerStatisticsInstance.technicalFouls}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'unsportmanlikeFouls', 'error')} required">
	<label for="unsportmanlikeFouls">
		<g:message code="playerStatistics.unsportmanlikeFouls.label" default="Unsportmanlike Fouls" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unsportmanlikeFouls" type="number" value="${playerStatisticsInstance.unsportmanlikeFouls}" required=""/>
</div>

