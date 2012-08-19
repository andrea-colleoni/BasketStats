package info.colleoni.basketstats

class Player extends Person {
	
	String shirtNumber
	String role

	Team team
	
	String toString() {
		"$fullname #$shirtNumber [$role]"
	}

    static constraints = {
		
    	shirtNumber()
    	role(inList:["Playmaker" , "Guard" , "Forward" , "Center" ])
    }
}
