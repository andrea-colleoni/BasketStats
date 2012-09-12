package info.colleoni.basketstats

class Season {

	int startYear
	int endYear
	static hasMany = [champioships : Championship]


	String toString(){
		"$startYear-$endYear"
	}


	static constraints = {
		startYear()
		endYear()
	}
}
