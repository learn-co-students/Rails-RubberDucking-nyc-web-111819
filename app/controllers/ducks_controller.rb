class DucksController < ApplicationController

  def index
    @ducks = Duck.all
    # render :index
  end
  
  def new
    @duck = Duck.new
    @students = Student.all
    # render :new
  end

  def create
    duck = Duck.create(duck_params)
    redirect_to duck_path(duck)
  end

  def show
    @duck = Duck.find(params[:id])
    # render :show
  end

  private 

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
