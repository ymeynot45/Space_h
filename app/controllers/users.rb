get '/user/:user_id' do
  user_id = params[:user_id]
  @rounds = User.get_rounds_by_user_id(user_id.to_i)
  
  erb :user_profile
end