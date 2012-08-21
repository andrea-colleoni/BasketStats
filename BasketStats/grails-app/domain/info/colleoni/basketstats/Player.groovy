package info.colleoni.basketstats

class Player {
	
	Person person
	String shirtNumber
	
	static hasMany = [roles : Role, rosters : Roster, playerStats : PlayerStatistics]
	static belongsTo = Roster
	
	boolean injuried
	
	String toString() {
		"$person.fullname - #$shirtNumber"
	}

    static constraints = {
		person()
    	shirtNumber()
		injuried()
    }
}
