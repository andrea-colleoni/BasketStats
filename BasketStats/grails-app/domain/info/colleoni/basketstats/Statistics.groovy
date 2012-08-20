package info.colleoni.basketstats

class Statistics {
	
	Match match
	Player player
	
	boolean startingFive
	
	int firstQtrMinutes
	int secondQtrMinutes
	int thirdQtrMinutes
	int fourthQtrMinutes
	int getTotalMinutes() { firstQtrMinutes + secondQtrMinutes + thirdQtrMinutes + fourthQtrMinutes }
	
	
	int threePtsScored
	int threePtsAttempts	
	float getThreePtsPct() { threePtsAttempts > 0 ? threePtsScored / threePtsAttempts : 0 }
	
	int longDistanceShootsScored
	int longDistanceShootsAttempts
	float getLongDistanceShootsPct() { longDistanceShootsAttempts > 0 ? longDistanceShootsScored / longDistanceShootsAttempts : 0 }
	
	int shortDistanceShootsScored
	int shortDistanceShootsAttempts
	float getShortDistanceShootsPct() { shortDistanceShootsAttempts > 0 ? shortDistanceShootsScored / shortDistanceShootsAttempts : 0 }
	
	int freeThrowsScored
	int freeThrowsAttempts
	float getFreeThrowsPct() { freeThrowsAttempts > 0 ? freeThrowsScored / freeThrowsAttempts : 0 }
	
	int getTotalPoints() { threePtsScored * 3 + (longDistanceShootsScored + shortDistanceShootsScored) * 2 + freeThrowsScored }
	
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
