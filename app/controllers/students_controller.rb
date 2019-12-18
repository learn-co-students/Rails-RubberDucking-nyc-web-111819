class StudentsController < ApplicationController

  def index
    @students = Student.all
    # render :index
  end

  def new
    @student = Student.new
    # render :new
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

  def show
    @student = Student.find(params[:id])
    # render :show
  end

  def edit
    @student = Student.find(params[:id])
    # render :edit
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end

  private 

  def student_params
    params.require(:student).permit(:name, :mod)
  end

end
