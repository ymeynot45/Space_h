#SPACE-WARD-HO

Classes: 

Game
	Players
	Planets


Players, 
	ID
	name
	total_metal
	total_cash
	#reseach_spending
	ideal_tempature (rand(1000))


	class Player(name)
		

	end


	class Planet

		def initialize(name)
			@name = name
			@location = [(rand101), rand101]
			@metal = ((5 * rand(100)) + 500)
			@tempature = (rand(1000))
			@current_ships = []
			@owned_by = nil
			@income = nil
		end

		def place_player
			@tempature = player.ideal_climate
		end

	end





Planets, (26 total)
	ID
	location (position)
	metal (rand 5d100 + 500)
	income (1000 - (abs(ideal_climate - tempature)))
	starting_tempature (rand(1000))
	tempature
	current ships
	owned_by 


Ships,
	ID 
	owned_by
	power
	position (planet?)
	metal_cost ((power / miniturization) * 10 )
	cash_cost (power * miniturization ^2 * 10 )

Tech_Tree (the square root of N/100) N equals the amount paid in.
	ID
	owned_by
	ship_power_max
	miniturization
	#terraforming skill #v2
	cost = (50*N)^2 / 2

	(50*N)^2 / 2: 1250, 5000, 11250, 20000, 31250
	(50*N)^2 / N: 2500, 5000, 7500, 10000, 12500







