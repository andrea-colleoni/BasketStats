package info.colleoni.basketstats

class Team {

	String name
	Person coach
	Season season
	static hasMany = [players : Player, executives : Person]

	String toString(){
		"$name ($season)"
	}


	static constraints = {
		name()
		coach(nullable:true)
	}
}
