#encoding: utf-8
module StudentsHelper
  def grade_year
    years = Array.new
    (Time.now.year-4...Time.now.year).each { |year| years << year.to_s }
    years
  end
  def nav_link_for_student 
    if student_signed_in?
      link_to "返回", student_page_path
    else
      link_to "返回", students_path
    end
  end

end
