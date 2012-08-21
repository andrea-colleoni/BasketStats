package info.colleoni.basketstats

class Season {

	int startYear
	int endYear


	String toString(){
		"$startYear-$endYear"
	}


	static constraints = {
		startYear()
		endYear()
	}
}
