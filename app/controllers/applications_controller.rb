class ApplicationsController < ApplicationController

  def new
    @application = Application.new
  end
  
  def create
    @application = Application.new(application_params)
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
