#encoding: utf-8
module HomeHelper
  def student_action_link(student, thesis)
    if thesis.nil?
      link_to "选择论文", choice_the_thesis_student_path(student)
    else
      link_to "答疑", questions_path
    end
  end
end
