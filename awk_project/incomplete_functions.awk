BEGIN {
	FS = ","
	max = 0
	count = 0
	num = 0
}


#Task 1: Find the most powerful Pokemon
function maxPower() {
	#this function is returning the last data entry in pokemon.csv
	if ($5 > max_points) {
		max_points = $5
		max_pokemon = $2
	}
	return max_pokemon
}

#Task 2: Find column averages
function colAvg(name) {
	#this function is only cycling through the columns, not inside them
	total += name
	count += 1

	return total/count
}

#Task 3: Find the most powerful Pokemon of each type
function power(type)  {
	#if (/type/) { - doesn't work
	#if ($3 ~ type || $4 ~ type) { - doesn't work 	
	if ($3 = type || $4 = type) {
		#not sure why '=' works, but '==' doesn't
		if ($5 > max) {
			max = $5
			maxPokemon = $2
		}
	}
	return ("The most powerful " type " is " maxPokemon ".\n")
}


#Task 4: Find average stats for each Pokemon
function stats(name) {
	#this function is only grabbing data from the last entry
	tot++
	pow += $5
	hp += $6
	attack += $7
	def += $8
	specA += $9
	specD += $10
	speed += $11
	gen += $12

	return (pow/tot "\t\t" hp/tot "\t\t" attack/tot "\t\t" def/tot "\t\t" specA/tot "\t\t" specD/tot "\t\t\t" speed/tot "\t\t" gen/tot "\t\t\n")
}


END {
	printf("\nThe most powerful Pokemon is " maxPower() " and has a total power of " max_points)
	printf(".\n")

	printf("\nColumn Averages\n")

	printf("Total Power\tHP\tAttack\t\tDefense\t\tSpecial Attack\tSpecial Defense\t\tSpeed\t\tGeneration\n")
	printf(colAvg($5) "\t\t" colAvg($6) "\t" colAvg($7) "\t\t" colAvg($8) "\t\t" colAvg($9) "\t\t" colAvg($10) "\t\t\t" colAvg($11) "\t\t" colAvg($12) )
	printf("\n")
	

	printf("\nMost Powerful Pokemon Types\n")
	printf(power("Bug"))
	printf(power("Dark"))
	printf(power("Electric"))
	printf(power("Fairy"))
	printf(power("Fighting"))
	printf(power("Fire"))
	printf(power("Flying"))
	printf(power("Ghost"))
	printf(power("Grass"))
	printf(power("Ground"))
	printf(power("Ice"))
	printf(power("Normal"))
	printf(power("Poison"))
	printf(power("Psychic"))
	printf(power("Rock"))
	printf(power("Steel"))
	printf(power("Water"))
	printf("\n")

	printf("\nAverage Stats for Pokemon Types\t\n")
	printf("Name\t\tTotal Power\tHP\t\tAttack\t\tDefense\t\tSpecial Attack\tSpecial Defense\t\tSpeed\t\tGeneration\n\n")
	printf("Bug\t\t" stats("Bug"))
	printf("Dark\t\t" stats("Dark"))
	printf("Dragon\t\t" stats("Dragon"))
	printf("Electric\t" stats("Electric"))
	printf("Fairy\t\t" stats("Fairy"))
	printf("Fighting\t" stats("Fighting"))
	printf("Fire\t\t" stats("Fire"))
	printf("Flying\t\t" stats("Flying"))
	printf("Ghost\t\t" stats("Ghost"))
	printf("Grass\t\t" stats("Grass"))
	printf("Ground\t\t" stats("Ground"))
	printf("Ice\t\t" stats("Ice"))
	printf("Normal\t\t" stats("Normal"))
	printf("Poison\t\t" stats("Poison"))
	printf("Psychic\t\t" stats("Psychic"))
	printf("Rock\t\t" stats("Rock"))
	printf("Steel\t\t" stats("Steel"))
	printf("Water\t\t" stats("Water"))

	printf("\n")

	printf("\n\nThis file doesn't work properly\n")
	printf("\n\nanswers.awk works, but is very sad and inelegant\n\n")
}


