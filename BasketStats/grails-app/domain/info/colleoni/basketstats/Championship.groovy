package info.colleoni.basketstats

class Championship {
	
	Season season
	String division
	
	String toString(){
		"$division - $season"
	}

    static constraints = {
		season()
		division()
    }
}
