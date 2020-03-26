class SessionsController < ApplicationController

  def new
  end

  def create
    if !session[:name]=params[:name] || session[:name]= []
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end

end
