package info.colleoni.basketstats

class PlayerStatistics {
	
	Match match
	Roster roster
	Player player
	static belongsTo = [Match, Player]
	
	boolean startingFive
	
	float defenseGrade
	float offenseGrade
	float overallGrade
	String notes
	
	int firstQtrMinutes
	int secondQtrMinutes
	int thirdQtrMinutes
	int fourthQtrMinutes
	int totalMinutes
	
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
	
	int technicalFouls
	int unsportmanlikeFouls
	boolean expulsion
	
	String toString() {
		"$player: $totalPoints"
	}

    static constraints = {
		match()
		roster()
		player()
	
		startingFive()
		
		defenseGrade(nullable:true)
		offenseGrade(nullable:true)
		overallGrade(nullable:true)
		notes(nullable:true, maxSize:5000)
		
		firstQtrMinutes()
		secondQtrMinutes()
		thirdQtrMinutes()
		fourthQtrMinutes()
		totalMinutes()
		
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
