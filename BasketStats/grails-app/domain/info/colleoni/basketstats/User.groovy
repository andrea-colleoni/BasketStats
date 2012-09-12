package info.colleoni.basketstats

class User {
	
	String email
	String password
	Date subscriptionDate
	boolean active
	boolean expired
	boolean superAdministrator
	Tenant tenant
	
	String toString(){
		email
	}

    static constraints = {
    	email(nullable:false, email:true, unique:true)
    	password()
    	subscriptionDate()
    	active()
    	expired()
		superAdministrator()
		tenant(nullable:true)
    }
}
