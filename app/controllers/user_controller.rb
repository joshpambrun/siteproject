class UserController < ApplicationController

  def login
    if params[:email] && params[:password]
      @email = params[:email]
      @password = params[:password]
      
      if User.where(email: params[:email]) != nil
        cookies['user'] = {
          :value => params[:email],
          :expires => 1.year.from_now
        }
      end
    end
  end
  
end
