package info.colleoni.basketstats

class Tenant {
	
	String name
	static hasMany = [users: User]
	
	String toString(){
		"$name"
	}

    static constraints = {
		name()
    }
}
