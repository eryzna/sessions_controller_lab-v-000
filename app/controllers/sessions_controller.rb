class SessionsController < ApplicationController

  def new
  end

  def create
    if if !params[:name] || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new') 
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end

end
