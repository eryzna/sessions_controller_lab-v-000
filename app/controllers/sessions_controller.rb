class SessionsController < ApplicationController

  def new
  end

  def create
    if !session[:name]=params[:name]
      redirect_to '/login'
    else
      redirect_to '/'
  end

  def destroy
    is 
    session.delete :username
  end

end
