package info.colleoni.basketstats

class Statistics {
	
	Match match
	Player player
	
	boolean startingFive
	
	int firstQtrMinutes
	int secondQtrMinutes
	int thirdQtrMinutes
	int fourthQtrMinutes
	
	
	int threePtsScored
	int threePtsAttempts	
	int longDistanceShootsScored
	int longDistanceShootsAttempts
	int shortDistanceShootsScored
	int shortDistanceShootsAttempts
	int freeThrowsScored
	int freeThrowsAttempts
	
	int defensiveRebounds
	int offensiveRebounds
	int steals
	int turnovers
	int assists
	int blocksMade
	int blocksSuffered
	int foulsMade
	int foulsSuffered
	
	String toString() {
		"$player.fullname ($match): "
	}

    static constraints = {
		match()
		player()
		
		startingFive()
		firstQtrMinutes()
		secondQtrMinutes()
		thirdQtrMinutes()
		fourthQtrMinutes()		
		
		threePtsScored()
		threePtsAttempts()
		longDistanceShootsScored()
		longDistanceShootsAttempts()
		shortDistanceShootsScored()
		shortDistanceShootsAttempts()
		freeThrowsScored()
		freeThrowsAttempts()
		
		defensiveRebounds()
		offensiveRebounds()
		steals()
		turnovers()
		assists()
		blocksMade()
		blocksSuffered()
		foulsMade()
		foulsSuffered()
		
    }
}
