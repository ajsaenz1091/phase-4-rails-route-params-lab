class StudentsController < ApplicationController

  def index

    name = params[:name]
    students = if name 
      Student.by_name(name)
    else
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
