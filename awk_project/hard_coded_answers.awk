BEGIN {
	FS = ","
	pokemon = 733
	max_points = 0
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
	avg_total += $5
	avg_hp += $6
	avg_attack += $7
	avg_defense += $8
	avg_specA += $9
	avg_specD += $10
	avg_speed += $11
	avg_gen += $12
} 
 
#Tasks 3-4: Find the most powerful Pokemon of each type along with average statistics
/Bug/ {
	bug++
	bug_total += $5
	bug_hp += $6
	bug_attack += $7
	bug_defense += $8
	bug_specA += $9
	bug_specD += $10
	bug_speed += $11
	bug_gen += $12
	
	if ($5 > maxBug) {
		maxBug = $5
		max_bug = $2}
}

/Dark/ {
	dark++
	dark_total += $5
	dark_hp += $6
	dark_attack += $7
	dark_defense += $8
	dark_specA += $9
	dark_specD += $10
	dark_speed += $11
	dark_gen += $12
	
	if ($5 > maxDark) {
		maxDark = $5
		max_dark = $2}	
}

/Dragon/ {
       dragon++
       dragon_total += $5
       dragon_hp += $6
       dragon_attack += $7
       dragon_defense += $8
       dragon_specA += $9
       dragon_specD += $10
       dragon_speed += $11
       dragon_gen += $12

       if ($5 > maxDragon) {
		maxDragon = $5
		max_dragon = $2}
}

/Electric/ {
	electric++
	electric_total += $5
	electric_hp += $6
	electric_attack += $7
	electric_defense += $8
	electric_specA += $9
	electric_specD += $10
	electric_speed += $11
	electric_gen += $12
       	if ($5 > maxElectric) {
		maxElectric = $5
		max_electric = $2}
}

/Fairy/ {
	fairy++
	fairy_total += $5
	fairy_hp += $6
	fairy_attack += $7
	fairy_defense += $8
	fairy_specA += $9
	fairy_specD += $10
	fairy_speed += $11
	fairy_gen += $12
	
	if ($5 > maxFairy) {
		maxFairy = $5
		max_fairy = $2}
}

/Fighting/ {
	fighting++
	fighting_total += $5
	fighting_hp += $6
	fighting_attack += $7
	fighting_defense += $8
	fighting_specA += $9
	fighting_specD += $10
	fighting_speed += $11
	fighting_gen += $12
	
	if ($5 > maxFighting) {
		maxFighting = $5
		max_fighting = $2}
}

/Fire/ {
	fire++
	fire_total += $5
	fire_hp += $6
	fire_attack += $7
	fire_defense += $8
	fire_specA += $9
	fire_specD += $10
	fire_speed += $11
	fire_gen += $12
	
	if ($5 > maxFire) {
		maxFire = $5
		max_fire = $2}
}

/Flying/ {
	flying++
	flying_total += $5
	flying_hp += $6
	flying_attack += $7
	flying_defense += $8
	flying_specA += $9
	flying_specD += $10
	flying_speed += $11
	flying_gen += $12
	
	if ($5 > maxFlying) {
		maxFlying = $5
		max_flying = $2}
}

/Ghost/ {
	ghost++
	ghost_total += $5
	ghost_hp += $6
	ghost_attack += $7
	ghost_defense += $8
	ghost_specA += $9
	ghost_specD += $10
	ghost_speed += $11
	ghost_gen += $12
	
	if ($5 > maxGhost) {
		maxGhost = $5
		max_ghost = $2}
}

/Grass/ {
	grass++
	grass_total += $5
	grass_hp += $6
	grass_attack += $7
	grass_defense += $8
	grass_specA += $9
	grass_specD += $10
	grass_speed += $11
	grass_gen += $12
	
	if ($5 > maxGrass) {
		maxGrass = $5 
       		max_grass = $2}
}
/Ground/ {
	ground++
	ground_total += $5
	ground_hp += $6
	ground_attack += $7
	ground_defense += $8
	ground_specA += $9
	ground_specD += $10
	ground_speed += $11
	ground_gen += $12
	
	if ($5 > maxGround) {
		maxGround = $5
		max_ground = $2}
}

/Ice/ {
	ice++
	ice_total += $5
	ice_hp += $6
	ice_attack += $7
	ice_defense += $8
	ice_specA += $9
	ice_specD += $10
	ice_speed += $11
	ice_gen += $12
	if ($5 > maxIce) {
		maxIce = $5
		max_ice = $2}
}

/Normal/ {
	normal++
	normal_total += $5
	normal_hp += $6
	normal_attack += $7
	normal_defense += $8
	normal_specA += $9
	normal_specD += $10
	normal_speed += $11
	normal_gen += $12
	
	if ($5 > maxNormal) {
		maxNormal = $5
		max_normal = $2}
}

/Poison/ {
	poison++
	poison_total += $5
	poison_hp += $6
	poison_attack += $7
	poison_defense += $8
	poison_specA += $9
	poison_specD += $10
	poison_speed += $11
	poison_gen += $12
	
	if ($5 > maxPoison) {
		maxPoison = $5
		max_poison = $2}
}

/Psychic/ {
	psychic++
	psychic_total += $5
	psychic_hp += $6
	psychic_attack += $7
	psychic_defense += $8
	psychic_specA += $9
	psychic_specD += $10
	psychic_speed += $11
	psychic_gen += $12

	if ($5 > maxPsychic) {
		maxPsychic = $5
		max_psychic = $2}
}

/Rock/ {
	rock++
	rock_total += $5
	rock_hp += $6
	rock_attack += $7
	rock_defense += $8
	rock_specA += $9
	rock_specD += $10
	rock_speed += $11
	rock_gen += $12
	
	if ($5 > maxRock) {
		maxRock = $5
		max_rock = $2}
}


/Steel/ {
	steel++
	steel_total += $5
	steel_hp += $6
	steel_attack += $7
	steel_defense += $8
	steel_specA += $9
	steel_specD += $10
	steel_speed += $11
	steel_gen += $12

	if ($5 > maxSteel) {
		maxSteel = $5
		max_steel = $2}
}

/Water/ {
	water++
	water_total += $5
	water_hp += $6
	water_attack += $7
	water_defense += $8
	water_specA += $9
	water_specD += $10
	water_speed += $11
	water_gen += $12

	if ($5 > maxWater) {
		maxWater = $5
		max_water = $2}
}

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

	return (pow/num"\t\t")
}

/Water/ {
	watertest = avgStats()
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

	printf("The average total power of each Pokemon is " avg_total / pokemon "\n")
	printf("The average HP of each Pokemon is " avg_hp / pokemon "\n")
	printf("The average attack points for each Pokemon is " avg_attack / pokemon "\n")
	printf("The average defense points for each Pokemon is " avg_defense / pokemon "\n")
	printf("The average special attack points for each Pokemon is " avg_specA / pokemon "\n")
	printf("The average special defense points for each Pokemon is " avg_specD / pokemon "\n")
	printf("The average speed for each Pokemon is " avg_speed / pokemon "\n")
	printf("The average generation of each Pokemon is " avg_gen / pokemon "\n")

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
	printf("Bug\t\t" bug_total/bug "\t\t" bug_hp/bug "\t\t" bug_attack/bug "\t\t" bug_defense/bug "\t\t" bug_specA/bug "\t\t" bug_specD/bug "\t\t\t" bug_speed/bug "\t\t" bug_gen/bug "\n")	
	printf("Dark\t\t" dark_total/dark "\t\t" dark_hp/dark "\t\t" dark_attack/dark "\t\t" dark_defense/dark "\t\t" dark_specA/dark "\t\t" dark_specD/dark "\t\t\t" dark_speed/dark "\t\t" dark_gen/dark "\n")
	printf("Dragon\t\t" dragon_total/dragon "\t\t" dragon_hp/dragon "\t\t" dragon_attack/dragon "\t\t" dragon_defense/dragon "\t\t" dragon_specA/dragon "\t\t" dragon_specD/dragon "\t\t\t" dragon_speed/dragon "\t\t" dragon_gen/dragon "\n")
	printf("Electric\t" electric_total/electric "\t\t" electric_hp/electric "\t\t" electric_attack/electric "\t\t" electric_defense/electric "\t\t" electric_specA/electric "\t\t" electric_specD/electric "\t\t\t" electric_speed/electric "\t\t" electric_gen/electric "\n")
	printf("Fairy\t\t" fairy_total/fairy "\t\t" fairy_hp/fairy "\t\t" fairy_attack/fairy "\t\t" fairy_defense/fairy "\t\t" fairy_specA/fairy "\t\t" fairy_specD/fairy "\t\t\t" fairy_speed/fairy "\t\t" fairy_gen/fairy "\n")
	printf("Fighting\t" fighting_total/fighting "\t\t" fighting_hp/fighting "\t\t" fighting_attack/fighting "\t\t" fighting_defense/fighting "\t\t" fighting_specA/fighting "\t\t" fighting_specD/fighting "\t\t\t" fighting_speed/fighting "\t\t" fighting_gen/fighting "\n")
	printf("Fire\t\t" fire_total/fire "\t\t" fire_hp/fire "\t\t" fire_attack/fire "\t\t" fire_defense/fire "\t\t" fire_specA/fire "\t\t" fire_specD/fire "\t\t\t" fire_speed/fire "\t\t" fire_gen/fire "\n")
	printf("Flying\t\t" flying_total/flying "\t\t" flying_hp/flying "\t\t" flying_attack/flying "\t\t" flying_defense/flying "\t\t" flying_specA/flying "\t\t" flying_specD/flying "\t\t\t" flying_speed/flying "\t\t" flying_gen/flying "\n")
	printf("Ghost\t\t" ghost_total/ghost "\t\t" ghost_hp/ghost "\t\t" ghost_attack/ghost "\t\t" ghost_defense/ghost "\t\t" ghost_specA/ghost "\t\t" ghost_specD/ghost "\t\t\t" ghost_speed/ghost "\t\t" ghost_gen/ghost "\n")
	printf("Grass\t\t" grass_total/grass "\t\t" grass_hp/grass "\t\t" grass_attack/grass "\t\t" grass_defense/grass "\t\t" grass_specA/grass "\t\t" grass_specD/grass "\t\t\t" grass_speed/grass "\t\t" grass_gen/grass "\n")
	printf("Ground\t\t" ground_total/ground "\t\t" ground_hp/ground "\t\t" ground_attack/ground "\t\t" ground_defense/ground "\t\t" ground_specA/ground "\t\t" ground_specD/ground "\t\t\t" ground_speed/ground "\t\t" ground_gen/ground "\n")
	printf("Ice\t\t" ice_total/ice "\t\t" ice_hp/ice "\t\t" ice_attack/ice "\t\t" ice_defense/ice "\t\t" ice_specA/ice "\t\t" ice_specD/ice "\t\t\t" ice_speed/ice "\t\t" ice_gen/ice "\n")
	printf("Normal\t\t" normal_total/normal "\t\t" normal_hp/normal "\t\t" normal_attack/normal "\t\t" normal_defense/normal "\t\t" normal_specA/normal "\t\t" normal_specD/normal "\t\t\t" normal_speed/normal "\t\t" normal_gen/normal "\n")
	printf("Poison\t\t" poison_total/poison "\t\t" poison_hp/poison "\t\t" poison_attack/poison "\t\t" poison_defense/poison "\t\t" poison_specA/poison "\t\t" poison_specD/poison "\t\t\t" poison_speed/poison "\t\t" poison_gen/poison "\n")
	printf("Psychic\t\t" psychic_total/psychic "\t\t" psychic_hp/psychic "\t\t" psychic_attack/psychic "\t\t" psychic_defense/psychic "\t\t" psychic_specA/psychic "\t\t" psychic_specD/psychic "\t\t\t" psychic_speed/psychic "\t\t" psychic_gen/psychic "\n")
	printf("Rock\t\t" rock_total/rock "\t\t" rock_hp/rock "\t\t" rock_attack/rock "\t\t" rock_defense/rock "\t\t" rock_specA/rock "\t\t" rock_specD/rock "\t\t\t" rock_speed/rock "\t\t" rock_gen/rock "\n")
	printf("Steel\t\t" steel_total/steel "\t\t" steel_hp/steel "\t\t" steel_attack/steel "\t\t" steel_defense/steel "\t\t" steel_specA/steel "\t\t" steel_specD/steel "\t\t\t" steel_speed/steel "\t\t" steel_gen/steel "\n")
	printf("Water\t\t" water_total/water "\t\t" water_hp/water "\t\t" water_attack/water "\t\t" water_defense/water "\t\t" water_specA/water "\t\t" water_specD/water "\t\t\t" water_speed/water "\t\t" water_gen/water "\n")

	printf("\n")
	printf("The standard deviation of the total power of all the Pokemon is " sqrt(sigma/(number-1)) "\n")
}
