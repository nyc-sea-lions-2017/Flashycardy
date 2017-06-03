get '/register/new' do
  erb :'/users/new'
end

post '/register' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    erb :'/users/show'
  else
    status 422
    @errors = user.errors.full_message
    erb :'register/new'
  end
end

get '/login/new' do
  erb :'/sessions/login'
end

post '/login' do
  binding
   @user = User.find_by(name: params[:user][:name])
   if @user && @user.authenticate([:password])
    session[:user_id] = @user.id
    erb :'/users/show'
  else
    @errors = ['incorrect username or password']
    erb :'sessions/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
