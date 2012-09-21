<%@ page import="info.colleoni.basketstats.PlayerStatistics" %>



<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'match', 'error')} required">
	<label for="match">
		<g:message code="playerStatistics.match.label" default="Match" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="match" name="match.id" from="${info.colleoni.basketstats.Match.list()}" optionKey="id" required="" value="${playerStatisticsInstance?.match?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerStatisticsInstance, field: 'playerSet', 'error')} required">
	<label for="playerSet">
		<g:message code="playerStatistics.playerSet.label" default="Player Set" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="playerSet" name="playerSet.id" from="${info.colleoni.basketstats.PlayerSet.list()}" optionKey="id" required="" value="${playerStatisticsInstance?.playerSet?.id}" class="many-to-one"/>
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
<table class="SimpleCleanTable" id="GradeTableForm">
	<caption>Grades</caption>
	<thead>
		<tr>
			<th>Overall</th>		
			<th>Defensive</th>
			<th>Off</th>
			<th>Notes</th>
		</tr>
	</thead>
	<tbody>
		<th><g:field name="overallGrade" value="${fieldValue(bean: playerStatisticsInstance, field: 'overallGrade')}" required=""/></th>
		<td><g:field name="defenseGrade" value="${fieldValue(bean: playerStatisticsInstance, field: 'defenseGrade')}" required=""/></td>
		<td><g:field name="offenseGrade" value="${fieldValue(bean: playerStatisticsInstance, field: 'offenseGrade')}" required=""/></td>
		<td><g:textArea name="notes" cols="40" rows="5" maxlength="5000" value="${playerStatisticsInstance?.notes}"/></td>
	</tbody>
</table>

<table class="SimpleCleanTable" id="TimeTableForm">
	<caption>Time</caption>
	<thead>
		<tr>
			<th>Total</th>		
			<th>Qtr.1</th>
			<th>Qtr.2</th>
			<th>Qtr.3</th>
			<th>Qtr.4</th>
		</tr>
	</thead>
	<tbody>
		<th><g:field name="totalMinutes" type="number" value="${playerStatisticsInstance.totalMinutes}" required=""/></th>
		<td><g:field name="firstQtrMinutes" type="number" value="${playerStatisticsInstance.firstQtrMinutes}" required=""/></td>
		<td><g:field name="secondQtrMinutes" type="number" value="${playerStatisticsInstance.secondQtrMinutes}" required=""/></td>
		<td><g:field name="thirdQtrMinutes" type="number" value="${playerStatisticsInstance.thirdQtrMinutes}" required=""/></td>
		<td><g:field name="fourthQtrMinutes" type="number" value="${playerStatisticsInstance.fourthQtrMinutes}" required=""/></td>
	</tbody>
</table>	

<table class="SimpleCleanTable" id="ScoreTableForm">
	<caption>Score</caption>
	<thead>
		<tr>
			<th>3 Pts</th>		
			<th>Long dst 2 Pts</th>
			<th>Short dst 2 Pts</th>
			<th>Free Throws</th>
		</tr>
	</thead>
	<tbody>
		<td><g:field name="threePtsScored" type="number" value="${playerStatisticsInstance.threePtsScored}" required=""/>
		/ <g:field name="threePtsAttempts" type="number" value="${playerStatisticsInstance.threePtsAttempts}" required=""/>
		</td>
		<td><g:field name="longDistanceShootsScored" type="number" value="${playerStatisticsInstance.longDistanceShootsScored}" required=""/>
		/ <g:field name="longDistanceShootsAttempts" type="number" value="${playerStatisticsInstance.longDistanceShootsAttempts}" required=""/></td>
		<td><g:field name="shortDistanceShootsScored" type="number" value="${playerStatisticsInstance.shortDistanceShootsScored}" required=""/>
		/ <g:field name="shortDistanceShootsAttempts" type="number" value="${playerStatisticsInstance.shortDistanceShootsAttempts}" required=""/></td>
		<td><g:field name="freeThrowsScored" type="number" value="${playerStatisticsInstance.freeThrowsScored}" required=""/>
		/ <g:field name="freeThrowsAttempts" type="number" value="${playerStatisticsInstance.freeThrowsAttempts}" required=""/></td>
	</tbody>
</table>	

<table class="SimpleCleanTable" id="PlayTableForm">
	<caption>Playing stats</caption>
	<thead>
		<tr>
			<th>Def. Rbds.</th>		
			<th>Off. Rbds.</th>
			<th>Steals</th>
			<th>Turnovers</th>
			<th>Assists</th>
			<th>Blks made</th>
			<th>Blks suff</th>
		</tr>
	</thead>
	<tbody>
		<td><g:field name="defensiveRebounds" type="number" value="${playerStatisticsInstance.defensiveRebounds}" required=""/></td>
		<td><g:field name="offensiveRebounds" type="number" value="${playerStatisticsInstance.offensiveRebounds}" required=""/></td>
		<td><g:field name="steals" type="number" value="${playerStatisticsInstance.steals}" required=""/></td>
		<td><g:field name="turnovers" type="number" value="${playerStatisticsInstance.turnovers}" required=""/></td>
		<td><g:field name="assists" type="number" value="${playerStatisticsInstance.assists}" required=""/></td>
		<td><g:field name="blocksMade" type="number" value="${playerStatisticsInstance.blocksMade}" required=""/></td>
		<td><g:field name="blocksSuffered" type="number" value="${playerStatisticsInstance.blocksSuffered}" required=""/></td>
	</tbody>
</table>

<table class="SimpleCleanTable" id="PlayTableForm">
	<caption>Fouls</caption>
	<thead>
		<tr>
			<th>Made</th>		
			<th>Suffered</th>
			<th>Expulsion</th>
			<th>Technicals</th>
			<th>USLF</th>
		</tr>
	</thead>
	<tbody>
		<td><g:field name="foulsMade" type="number" value="${playerStatisticsInstance.foulsMade}" required=""/></td>
		<td><g:field name="foulsSuffered" type="number" value="${playerStatisticsInstance.foulsSuffered}" required=""/></td>
		<td><g:checkBox name="expulsion" value="${playerStatisticsInstance?.expulsion}" /></td>
		<td><g:field name="technicalFouls" type="number" value="${playerStatisticsInstance.technicalFouls}" required=""/></td>
		<td><g:field name="unsportmanlikeFouls" type="number" value="${playerStatisticsInstance.unsportmanlikeFouls}" required=""/></td>
	</tbody>
</table>	

