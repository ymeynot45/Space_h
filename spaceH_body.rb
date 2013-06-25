#Space-ward-ho

class  Viewer

	def play_count
		puts "How many players will be playing/ (max 4)"
		player_count = gets.chomp
		if player_count == player_count.to_i
			return player_count
		else
			puts "A number less than 4 please."
			play_count
		end
	end

	def prompt_for_name
		puts "What is your name?"
		name = gets.chomp.upcase
		if name == name.to_s
			return name
		else
			puts "Words only please"
			prompt_for_name
		end
	end

	def prompt_for_game_size
		puts "How big of a game would you like?"
		puts "Tiny, Small, Normal, Large, Huge"
		reply = gets.chomp.downcase
		case 
		when reply == "tiny"
			return 5
		when reply == "small"
			return 4
		when reply == "normal"
			return 3
		when reply == "large"
			return 2
		when reply == "huge"
			return 1
		else
			puts "Please type one of the prompts."
			prompt_for_game_size
		end
	end

	def 
	end 


end





Class Game
	
	PLANET_POOL = []

	def initialize
		@player_pool = []
		@game_planets = []
		promps = Viewer.new
		player_count = promps.play_count
		(player_count).times do
			name = promps.prompt_for_name
			player_pool << Player.new(name)
		end
		game_size = promps.prompt_for_game_size
		planets = PLANET_POOL.sample((26/game_size))
		build_map
		place_players
	#Turn Rotation (loop for the rest of the game)
	end

	def TurnRotation
		#large loop
		#prompt player
		#display_planets
		#defending battle outcome
		#update (player: total_metal, total_cash Planet: metal, income, tempature Tech_tree: stats)
		#prompt player to move (moveships, change spending, buy ships)
		#end players turn
		#cycle to next player
		#when next player == current_player = current_player wins 
	end

	def build_map(planets)
		until planets.count == 0
			@game_planets << Planet.new(planets.shift)
		end
	end

	def place_players
		count = 0
		until @player_pool.count < count
			@player_pool[count]



			count += 1
		end

	end

end