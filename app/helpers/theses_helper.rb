#encoding: utf-8
module ThesesHelper
  def show_nav_for_show_page
    if current_student
      link_to "返回", student_page_path
    else
      link_to "返回", teacher_page_path
    end
  end
  
  def edit_the_summary_for_teacher(f)
    if current_teacher
      f.kindeditor :summary, :width => 660, :height => 100, :resizeTypeType => 0
    else
      sanitize @thesis.summary, :attributes => %w(id class style)
    end
  end

end
