package info.colleoni.basketstats

class Match {

	Date matchDate
	Team teamA
	Team teamB
	Person referee
	Season season
	String location
	
	byte[] matchReport
	byte[] matchScout


	String toString(){
		"$teamA.name  vs $teamB.name"
	}

	static constraints = {
		teamA()
		teamB()
		matchDate()
		location(nullable:true, blank:true)
		referee(nullable:true)
		matchReport(nullable:true, maxSize:2000000)
		matchScout(nullable:true, maxSize:2000000)
	}
}
