get "/user/:user_id" do
  user_id = params[:user_id]
  @name = User.name
  
  erb :user_profile
end