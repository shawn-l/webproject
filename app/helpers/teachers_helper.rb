#encoding: utf-8
module TeachersHelper
  def nav_link_for_teacher
    if teacher_signed_in?
      link_to "返回", teacher_page_path
    else
      link_to "返回", teachers_path
    end
  end

end
