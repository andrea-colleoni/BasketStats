package info.colleoni.basketstats

class Player {
	
	Person person
	String shirtNumber
	static hasMany = [roles : Role]
	boolean injuried
	
	Team team
	
	String toString() {
		"$person.fullname #$shirtNumber"
	}

    static constraints = {
		person()
		team()
    	shirtNumber()
		injuried()
    }
}
