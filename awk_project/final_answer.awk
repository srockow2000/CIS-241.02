BEGIN {
	FS = ","
	max_points = 0
	num = 0
}

#Task 1: Find the most powerful Pokemon
{
	if ($5 > max_points && NR > 1) {
		max_points = $5
		max_Pokemon = $2
	}
}

#Task 2: Find averages for columns
{
	if(NR > 1) {
		avg_total += $5
		avg_hp += $6
		avg_attack += $7
		avg_defense += $8
		avg_specA += $9
		avg_specD += $10
		avg_speed += $11
		avg_gen += $12
	}		
}
 
#Tasks 3-4: Find the most powerful Pokemon of each type along with average statistics

function avgStats() {
	num++
	pow += $5
	hp += $6
	attack += $7
	def += $8
	specA += $9
	specD += $10
	speed += $11
	gen += $12
	
	return (pow/num"\t\t"hp/num"\t\t"attack/num"\t\t"def/num"\t\t"specA/num"\t\t"specD/num"\t\t\t"speed/num"\t\t"gen/num"\n")
}

/Bug/ {
	bug_stats = avgStats()
	if ($5 > maxBug) {
		maxBug = $5
		max_bug = $2
	}
}

/Dark/ {
	dark_stats = avgStats()
	if ($5 > maxDark) {
		maxDark = $5
		max_dark = $2
	}
}

/Dragon/ {
       dragon_stats = avgStats()
       if ($5 > maxDragon) {
		maxDragon = $5
		max_dragon = $2}
}

/Electric/ {
	electric_stats = avgStats()
       	if ($5 > maxElectric) {
		maxElectric = $5
		max_electric = $2}
}

/Fairy/ {
	fairy_stats = avgStats()
	if ($5 > maxFairy) {
		maxFairy = $5
		max_fairy = $2}
}

/Fighting/ {
	fighting_stats = avgStats()
	if ($5 > maxFighting) {
		maxFighting = $5
		max_fighting = $2}
}

/Fire/ {
	fire_stats = avgStats()
	if ($5 > maxFire) {
		maxFire = $5
		max_fire = $2}
}

/Flying/ {
	flying_stats = avgStats()	
	if ($5 > maxFlying) {
		maxFlying = $5
		max_flying = $2}
}

/Ghost/ {
	ghost_stats = avgStats()
	
	if ($5 > maxGhost) {
		maxGhost = $5
		max_ghost = $2}
}

/Grass/ {
	grass_stats = avgStats()	
	if ($5 > maxGrass) {
		maxGrass = $5 
       		max_grass = $2}
}
/Ground/ {
	ground_stats = avgStats()
	
	if ($5 > maxGround) {
		maxGround = $5
		max_ground = $2}
}

/Ice/ {
	ice_stats = avgStats()
	if ($5 > maxIce) {
		maxIce = $5
		max_ice = $2}
}

/Normal/ {
	normal_stats = avgStats()
	if ($5 > maxNormal) {
		maxNormal = $5
		max_normal = $2}
}

/Poison/ {
	poison_stats = avgStats()
	if ($5 > maxPoison) {
		maxPoison = $5
		max_poison = $2}
}

/Psychic/ {
	psychic_stats = avgStats()
	if ($5 > maxPsychic) {
		maxPsychic = $5
		max_psychic = $2}
}

/Rock/ {
	rock_stats = avgStats()
	if ($5 > maxRock) {
		maxRock = $5
		max_rock = $2}
}


/Steel/ {
	steel_stats = avgStats()
	if ($5 > maxSteel) {
		maxSteel = $5
		max_steel = $2}
}

/Water/ {
	water_stats = avgStats()
	if ($5 > maxWater) {
		maxWater = $5
		max_water = $2}
}

#Task 5: Interesting Calculation - standard deviation for the total power of all Pokemon
{
	sum += $5
	number ++

	sigma += (($5 - (sum/number)) ^ 2)
}


END {
	printf("\nThe most powerful pokemon is " max_Pokemon " and has " max_points " points\n")
	printf("\n")

	printf("The average total power of each Pokemon is " (avg_total/(NR - 1)) "\n")
	printf("The average HP of each Pokemon is " (avg_hp/(NR - 1)) "\n")
	printf("The average attack points for each Pokemon is " (avg_attack/(NR-1)) "\n")
	printf("The average defense points for each Pokemon is " (avg_defense/(NR-1)) "\n")
	printf("The average special attack points for each Pokemon is " (avg_specA/(NR-1))"\n")
	printf("The average special defense points for each Pokemon is " (avg_specD/(NR-1)) "\n")
	printf("The average speed for each Pokemon is " (avg_speed/(NR-1)) "\n")
	printf("The average generation of each Pokemon is " (avg_gen/(NR-1)) "\n")

	printf("\n")

	printf("\nThe most powerful Bug is " max_bug)
	printf("\nThe most powerful Dark is " max_dark)
	printf("\nThe most powerful Dragon is " max_dragon)
	printf("\nThe most powerful Electric is " max_electric)
	printf("\nThe most powerful Fairy is " max_fairy)
	printf("\nThe most powerful Fighting is " max_fighting)
	printf("\nThe most powerful Fire is " max_fire)
	printf("\nThe most powerful Flying is " max_flying)
	printf("\nThe most powerful Ghost is " max_ghost)
	printf("\nThe most powerful Grass is " max_grass)
	printf("\nThe most powerful Ground is " max_ground)	
	printf("\nThe most powerful Ice is " max_ice)
	printf("\nThe most powerful Normal is " max_normal)
	printf("\nThe most powerful Poison is " max_poison)
	printf("\nThe most powerful Psychic is " max_psychic)
	printf("\nThe most powerful Rock is " max_rock)
	printf("\nThe most powerful Steel is " max_steel)
	printf("\nThe most powerful Water is " max_water)
	
	printf("\n")

	printf("\nAverage Stats for Pokemon Types\n")
	printf("Name\t\tTotal Power\tHP\t\tAttack\t\tDefense\t\tSpecial Attack\tSpecial Defense\t\tSpeed\t\tGeneration\n\n")
	printf("Bug\t\t" bug_stats)
	printf("Dark\t\t" dark_stats)
	printf("Dragon\t\t" dragon_stats)
	printf("Electric\t" electric_stats)
	printf("Fairy\t\t" fairy_stats)
	printf("Fighting\t" fighting_stats)
	printf("Fire\t\t" fire_stats)
	printf("Flying\t\t" flying_stats)
	printf("Ghost\t\t" ghost_stats)
	printf("Grass\t\t" grass_stats)
	printf("Ground\t\t" ground_stats)
	printf("Ice\t\t" ice_stats)
	printf("Normal\t\t" normal_stats)
	printf("Poison\t\t" poison_stats)
	printf("Psychic\t\t" psychic_stats)
	printf("Rock\t\t" rock_stats)
	printf("Steel\t\t" steel_stats)
	printf("Water\t\t" water_stats)
	       
	printf("\n\n")
	printf("The standard deviation of the total power of all the Pokemon is " sqrt(sigma/(number-1)) "\n")
	printf("\n")
}
