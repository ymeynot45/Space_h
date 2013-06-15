get '/' do
  if current_user
    redirect to '/games'
  else
    redirect to '/login'
  end
end

get '/user/:user_id' do
  user_id = params[:user_id]
  @rounds = User.get_rounds_by_user_id(user_id.to_i)
  
  erb :user_profile
end
