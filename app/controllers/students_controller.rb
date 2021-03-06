class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new

  end

  def create
    @student = Student.new(student_params)
    @student.house_id = (1 + rand(4))
    @student.save
    redirect_to @student
  end


private
def student_params
  params.require(:student).permit(:name, :img_url, :house_id)
end

end
