class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource) 
    if resource.is_a?(Teacher)
      teacher_page_path 
    elsif resource.is_a?(Student)
      student_page_path
    else
        admin_page_path
    end
  end

 
end
