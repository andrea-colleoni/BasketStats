import info.colleoni.basketstats.Role

class BootStrap {

	def init = { servletContext ->
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
			def center = new Role(roleName: 'Forward' ,
					rolePosition: 5)
			if (!center.save()){
				center.errors.allErrors.each{ error -> println "An error occured with center: ${error}" }
			}
		}
	}
	def destroy = {
	}
}
