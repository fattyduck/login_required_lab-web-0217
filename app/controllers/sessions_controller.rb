class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_show_path
    end
  end

  def destroy
    session.delete :name
    redirect_to new_session_path
  end
end