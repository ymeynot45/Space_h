get '/games' do
	@display_left_nav = true
	erb :"games/index"
end

get '/games/new' do
	@display_left_nav = true
	erb :"games/new"
end

post '/games' do
	@display_left_nav = true
	
	# potentially a security hole... because of the || or if done client side
	# params[:game][:creator_id] ||= current_user.creator_id

	# pretty verbose... but ok.
	# game = Game.new(params[:game])
	# game.creator = current_user

	# ideally we should build new objects from the associations... like this:
	@game = current_user.created_games.build(params[:game])
	if @game.save!
		redirect to "/games/list"
	else
		redirect to "/games"
	end
	redirect to '/error'
end

get '/games/list' do
	@display_left_nav = true
	@games = Game.all
	erb :"games/list"
end
