class SessionsController < ApplicationController
  def new

  end

  def create
    if session[:name]
      redirect_to "/application/hello"
    else
      if !params[:name] || params[:name] == ""
        redirect_to "/login"
      else
        session[:name] = params[:name]
        redirect_to "/"
      end
    end
  end

  def destroy
    session.destroy
  end
end
