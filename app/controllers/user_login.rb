post '/create_user' do
  @user =User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id 
    redirect to '/games'
  else
    redirect to '/'
  end
end

get '/login' do 
  puts request.class
  puts request.inspect
  erb :login
end

post '/login' do
  user = User.authenticate(params[:username], params[:password])
  if user  
    session[:user_id] = @user.id 
    redirect to '/games'
  else 
    redirect to '/'
  end
end


get '/logout' do
  session[:user_id] = nil
  redirect to '/'
end

