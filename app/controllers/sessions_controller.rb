class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name] == nil || params[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
  
end
