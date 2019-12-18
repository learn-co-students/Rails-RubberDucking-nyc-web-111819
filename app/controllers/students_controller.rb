class StudentsController < ApplicationController

  before_action :find_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
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
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      flash[:messages] = @student.errors.full_messages
      redirect_to edit_student_path(@student)
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
