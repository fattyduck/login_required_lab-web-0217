class SecretsController < ApplicationController
  def show
    #return head(:forbidden) unless session.include? :name
    redirect_to new_session_path unless current_user
  end
end
