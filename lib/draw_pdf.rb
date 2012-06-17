#encoding: utf-8
class DrawPdf
  def self.draw(thesis)
    html = "<div style=\"text-align:center;font-size:30px;\">#{thesis.title}</div>"
    html << "<h3>简介</h3>"
    html << thesis.summary
    html << "<h3>正文</h3>"
    html << thesis.content
    kit = PDFKit.new(html, :page_size => 'Letter')
    kit.to_file("pdf/thesis#{thesis.id}.pdf")   
  end

  def self.draw_record(thesis)
   questions = thesis.questions
   html = ""
   questions.each do |question|
      html << "<div style=\"text-align:center;font-size:30px;\">#{question.content}</div>"
      question.answers.each do |answer|
      html << "<p>#{answer.name}:#{answer.content}</p>"
     end 
   end
   kit = PDFKit.new(html, :page_size => 'Letter')
   kit.to_file("pdf/thesis#{thesis.id}_record.pdf")
  end
end
