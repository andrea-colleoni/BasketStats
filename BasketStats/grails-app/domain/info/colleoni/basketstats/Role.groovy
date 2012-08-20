package info.colleoni.basketstats

class Role {
	
	String roleName
	int rolePosition

	String toString() {
		roleName
	}
	
    static constraints = {
		roleName()
		rolePosition()
    }
}
