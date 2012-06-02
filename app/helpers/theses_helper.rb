#encoding: utf-8
module ThesesHelper
  def show_nav_for_show_page
    if current_student
      link_to "返回", student_page_path
    else
      link_to "返回", teacher_page_path
    end
  end
end
