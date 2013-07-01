get '/games' do
	erb :"games/index"
end

get '/games/new' do
	erb :"games/new"
end

post 'games/new' do
	@game = Game.new(params[:name], params[:number_of_players], params[:game_size])
	if @game.save
		redirect to "/games/list"
	else
		redirect to "/games"
	end
	redirect to '/error'
end

get '/games/list' do
	#@game_list = Game.all
	@users = User.all
	erb :"games/list"
end
