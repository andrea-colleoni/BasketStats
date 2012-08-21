package info.colleoni.basketstats

class ChampionshipPhase {
	
	Championship championship
	String groupage
	String phase
	static hasMany = [matches : Match, rosters : Roster]
	
	String toString(){
		"$championship: $phase - $groupage"
	}

    static constraints = {
		championship()
		groupage(nullable:true, blank:true)
		phase(blank:true)
    }
}
