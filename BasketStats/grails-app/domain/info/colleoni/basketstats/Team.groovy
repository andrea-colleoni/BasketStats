package info.colleoni.basketstats

class Team {

	String name
	static hasMany = [coaches: Person, executives : Person]

	String toString(){
		"$name"
	}


	static constraints = {
		name()
	}
}
