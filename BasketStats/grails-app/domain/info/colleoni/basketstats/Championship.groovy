package info.colleoni.basketstats

class Championship {
	
	Season season
	String division
	static hasMany = [champioshipPhases : ChampionshipPhase]
	
	String toString(){
		"$division - $season"
	}

    static constraints = {
		season()
		division()
    }
}
