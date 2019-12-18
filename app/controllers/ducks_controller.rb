class DucksController < ApplicationController

  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
    #@duck = Duck.find(params[:id])
  end 

  def new
    @students = Student.all
    @duck = Duck.new
  end

  def create
    @duck = Duck.create(duck_params)
    if @duck.valid?
    redirect_to duck_path(@duck)
    else
      flash[:messages] = @duck.errors.full_messages
      redirect_to new_duck_path(@duck)
    end
  end 

  def edit
    @students = Student.all
    #@duck = Duck.find(params[:id])
  end

  def update
    #@duck = Duck.find(params[:id])
    @duck.update(duck_params)
    if @duck.valid?
    redirect_to duck_path(@duck)
    else
      flash[:messages] = @duck.errors.full_messages
      redirect_to edit_duck_path(@duck)
    end
  end 

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end 

end
