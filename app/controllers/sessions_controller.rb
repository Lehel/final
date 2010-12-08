class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      redirect_to :action => :new, :error => 'Unsuccessful login'
    else
      sign_in user
      redirect_back_or user
    end
  end

  def destroy
      sign_out
      redirect_to root_path
    end
end
