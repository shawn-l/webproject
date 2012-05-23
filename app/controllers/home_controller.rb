class HomeController < ApplicationController
  before_filter :authenticate_teacher!, :only => 'teacher'
  def guest
  end

  def teacher
    @teacher = current_teacher
  end

  def student
  end

end
