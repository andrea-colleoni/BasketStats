package info.colleoni.basketstats

class User {
	
	String email;
	String password;
	Date subscriptionDate;
	boolean active;
	boolean expired;
	
	String toString(){
		email
	}

    static constraints = {
    	email(email:true, unique:true)
    	password()
    	subscriptionDate()
    	active()
    	expired()
    }
}
