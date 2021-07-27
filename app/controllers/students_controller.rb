class StudentsController < ApplicationController

  def index
    first_name = params[:name].split(" ").first
    last_name = params[:name].split(" ").second
    students = Student.where(first_name: first_name, last_name: last_name)
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
