class UsersController < ApplicationController
  
  def new
    @title = "Sign up"
    @user = User.new
  end
  def create
     @user = User.new(params[:user])
     if @user.save
       redirect_to @user, :notice => "Success"
     else
       @title = "Sign up"
       render 'new'
     end
   end
   
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
end
