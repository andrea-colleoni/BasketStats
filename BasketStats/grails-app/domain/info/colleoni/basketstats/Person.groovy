package info.colleoni.basketstats

class Person {

	String fullname;
	String nick;
	byte[] image;
	String email;
	String phoneNumber;
	String streetAddress;
	String city;
	String province;
	String zipCode;
	String bio;
	User user;

	String toString(){
		nick ?: fullname
	}


	static constraints = {
		fullname()
		nick()
		email(nullable:true, email:true)
		phoneNumber(nullable:true)
		streetAddress(nullable:true, blank:true)
		city(nullable:true, blank:true)
		zipCode(nullable:true, blank:true)
		province(nullable:true, blank:true)
		image(nullable:true, maxSize:1000000)
		bio(nullable:true, blank:true, maxSize:5000)
		user(nullable:true)
	}
}
