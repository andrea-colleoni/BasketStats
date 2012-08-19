package info.colleoni.basketstats

class Season {

	int startYear
	int endYear
	String division
	String groupage
	String phase
	static hasMany = [matches : Match, teams : Team]

	String toString(){
		"$division - $startYear/$endYear"
	}


	static constraints = {
		startYear()
		endYear()
		division()
		groupage(nullable:true, blank:true)
		phase(nullable:true, blank:true)
	}
}
