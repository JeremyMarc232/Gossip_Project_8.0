class SessionsController < ApplicationController

def new
  @user = User.new
end
  def create
  
    user = User.find_by(email: params[:email])
  
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
  
    else
      @failure = true
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
  end

end
