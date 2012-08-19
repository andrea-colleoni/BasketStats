package info.colleoni.basketstats

class Match {

	Date matchDate
	Team teamA
	Team teamB
	Person referee
	Season season
	String location


	String toString(){
		"$teamA.name  vs $teamB.name"
	}

	static constraints = {
		teamA()
		teamB()
		matchDate()
		location(nullable:true, blank:true)
		referee(nullable:true)
	}
}
