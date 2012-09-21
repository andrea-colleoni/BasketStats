package info.colleoni.basketstats

class Team {

	String name
	static hasMany = [coaches: Person, executives : Person, playerSets: PlayerSet, championshipPhases: ChampionshipPhase]

	String toString(){
		"$name"
	}


	static constraints = {
		name()
	}
}
