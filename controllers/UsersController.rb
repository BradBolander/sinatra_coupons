class UsersController < ApplicationController

  get '/login' do
   erb :login
  end

  post '/login' do

    erb :login_success

  end

  get '/register' do
    erb :registration
  end

  post '/register' do

    @new_user = UsersModel.new
    puts params
    @new_user.user_name = params[:user_name]
    @new_user.user_email = params[:user_email]

    password_salt = BCrypt::Engine.generate_salt
    password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)

    @new_user.password_salt = password_salt
    @new_user.password_hash = password_hash

    @new_user.save

    erb :registration_success

  end

end
