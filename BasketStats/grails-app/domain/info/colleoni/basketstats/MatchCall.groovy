package info.colleoni.basketstats

class MatchCall {
	
	String description
	String notes
	Roster roster
	static hasMany = [players : Player]
	
	String toString() {
		"$description ($roster)"
	}
    static constraints = {
		description(maxSize:30)
		notes(maxSize:2000)
		roster()
    }
}
