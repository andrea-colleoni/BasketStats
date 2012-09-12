package info.colleoni.basketstats

class Team {

	String name
	static hasMany = [coaches: Person, executives : Person, playerSets: PlayerSet]

	String toString(){
		"$name"
	}


	static constraints = {
		name()
	}
}
