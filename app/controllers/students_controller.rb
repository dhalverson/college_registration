class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    new_student = Student.create(student_params)
    flash[:success] = "Welcome, #{new_student.email}!"
    redirect_to root_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end