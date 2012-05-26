class HomeController < ApplicationController
  before_filter :authenticate_teacher!, :only => 'teacher'
  before_filter :authenticate_student!, :only => 'student'
  def guest
  end

  def teacher
    @teacher = current_teacher
    @theses = @teacher.theses
  end

  def student
    @student = current_student
    @thesis = @student.thesis
  end

end
