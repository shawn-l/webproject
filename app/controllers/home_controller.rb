class HomeController < ApplicationController
  before_filter :authenticate_teacher!, :only => 'teacher'
  before_filter :authenticate_student!, :only => 'student'
  before_filter :authenticate_administrator!, :only => 'admin'
  def guest
    render(:layout => "layouts/login")
  end

  def teacher
    @teacher = current_teacher
    @theses = @teacher.theses
  end

  def student
    @student = current_student
    @thesis = @student.thesis
  end
   
  def admin
    @administrator = current_administrator
    @inactive_teachers = Teacher.find_all_by_state(false)
    @inactive_students = Student.find_all_by_state(false)
  end
 end
