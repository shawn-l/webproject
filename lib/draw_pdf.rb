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
end
