get '/' do
  if current_user
    redirect to '/games'
  else
    redirect to '/login'
  end
end
