package info.colleoni.basketstats

import groovy.ui.text.TextEditor.OvertypeCaret;

class Match {

	Date matchDate
	int round
	String phase
	Team teamA
	Team teamB
	Person referee
	ChampionshipPhase championshipPhase
	String location
	
	static hasMany = [matchStats : PlayerStatistics]
	
	int firstQtrTeamAScore
	int firstQtrTeamBScore
	int secondQtrTeamAScore
	int secondQtrTeamBScore
	int thirdQtrTeamAScore
	int thirdQtrTeamBScore
	int fourthQtrTeamAScore
	int fourthQtrTeamBScore
	int overtimesNumber
	int overtimesTeamAScore
	int overtimesTeamBScore
	
	int getFinalTeamAScore() { overtimesNumber > 0 ? overtimesTeamAScore : fourthQtrTeamAScore }
	int getFinalTeamBScore() { overtimesNumber > 0 ? overtimesTeamBScore : fourthQtrTeamBScore }
	
	byte[] matchReport
	byte[] matchScout


	String toString(){
		"$teamA  vs $teamB"
	}

	static constraints = {
		championshipPhase()
		teamA()
		teamB()
		
		matchDate(precision:"minute")
		round()
		phase(nullable:true, inList : ["Going", "Return", "Off match"])
		location(nullable:true, blank:true)
		referee(nullable:true)
		
		matchReport(nullable:true, maxSize:2500000)
		matchScout(nullable:true, maxSize:2500000)
		
		firstQtrTeamAScore()
		firstQtrTeamBScore()
		secondQtrTeamAScore()
		secondQtrTeamBScore()
		thirdQtrTeamAScore()
		thirdQtrTeamBScore()
		fourthQtrTeamAScore()
		fourthQtrTeamBScore()
		overtimesNumber()
		overtimesTeamAScore()
		overtimesTeamBScore()
	}
}
