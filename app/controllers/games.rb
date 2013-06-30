get '/games' do
	erb :"games/index"
end

get '/games/list' do
	@game_list = Game.all

	erb :"games/list"
end

get '/games/new' do
	erb :"games/new"
end

#shouldn't this be 'games/new' ?
post 'games/new' do
	@game = Game.new(params[:name], params[:number_of_players], params[:game_size])
	if @game.save
		erb :"games/list"
	else
		erb :"games"
	end
	redirect to '/'
end
