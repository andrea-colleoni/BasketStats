package info.colleoni.basketstats

class Roster {
	
	Team team
	Championship championship
	static hasMany = [players : Player]
	
	String toString() {
		"$championship - $team"
	}

    static constraints = {
		championship()
		team()
    }
}
