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
	@game = Game.new(params[:game])
	@game.creator = current_user
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
	#@users = User.all
	erb :"games/list"
end
