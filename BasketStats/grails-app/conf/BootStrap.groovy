import info.colleoni.basketstats.Role
import info.colleoni.basketstats.Season
import info.colleoni.basketstats.User

class BootStrap {

	def init = { servletContext ->
		if (!Season.get(1)){
			def season = new Season(startYear: 2011 ,
				endYear: 2012)
			if (!season.save()){
				season.errors.allErrors.each{ error -> println "An error occured with season: ${error}" }
			}
		}
		if (!Role.get(1)){
			def playMaker = new Role(roleName: 'Point Guard' ,
					rolePosition: 1)
			if (!playMaker.save()){
				playMaker.errors.allErrors.each{ error -> println "An error occured with playMaker: ${error}" }
			}
			def guard = new Role(roleName: 'Shooting Guard' ,
					rolePosition: 2)
			if (!guard.save()){
				guard.errors.allErrors.each{ error -> println "An error occured with guard: ${error}" }
			}
			def smForward = new Role(roleName: 'Small Forward' ,
					rolePosition: 3)
			if (!smForward.save()){
				smForward.errors.allErrors.each{ error -> println "An error occured with small forward: ${error}" }
			}
			def pwForward = new Role(roleName: 'Power Forward' ,
					rolePosition: 4)
			if (!pwForward.save()){
				pwForward.errors.allErrors.each{ error -> println "An error occured with power forward: ${error}" }
			}
			def center = new Role(roleName: 'Center' ,
					rolePosition: 5)
			if (!center.save()){
				center.errors.allErrors.each{ error -> println "An error occured with center: ${error}" }
			}
		}
		if (!User.get(1)){
			def root = new User(superAdministrator: true, email: 'root@localhost.lcl' ,
					password: 'secret',
					subscriptionDate: new Date())
			if (!root.save()){
				root.errors.allErrors.each{ error -> println "An error occured with root user: ${error}" }
			}
		}
	}
	def destroy = {
	}
}
