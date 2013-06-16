get '/games' do 
	erb :"games/index"
end

get '/games/new' do 
	erb :"games/new"
end

post 'games' do
	@game = Game.new(params[:name], params[:number_of_players], params[:game_size])
	if @game.save
		end
end