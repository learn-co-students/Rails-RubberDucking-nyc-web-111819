class StudentsController < ApplicationController

  before_action find_student: [:create, :show, :update, :edit]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    
    if student.valid?
      redirect_to student_path(student)
    else 
      flash[:messages] = student.errors.full_messages
      redirect_to new_student_path 
    end
  end

  def edit
    @student = Student.find(params[:id])
    
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)

    redirect_to student_path(@student)
    else
      flash[:messages] = @student.errors.full_messages
  end

  def show
    @student = Student.find(params[:id])
    @ducks = Duck.all
  end

  


  private
  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def find_student
    @student = Student.find(params[:id])
  end


end
