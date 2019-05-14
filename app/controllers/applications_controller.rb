class ApplicationsController < ApplicationController
  require "byebug"
  def new
    @application = Application.new
  end
  
  def create
    @application = Application.new(application_params)
    @application.user_id = current_user.id
    @application.save
    redirect_to "#"
  end
  
  def delete 
  end
  
  def show
  end
  
private 

  def application_params
    params.require(:application).permit!
  end
end
