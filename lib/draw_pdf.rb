class DrawPdf
  def self.draw(thesis)
    html = "Item:#{thesis.item}<br />"
    html << "Title:#{thesis.title}<br />"
    html << thesis.summary
    html << thesis.content
    kit = PDFKit.new(html, :page_size => 'Letter')
    kit.to_file("pdf/thesis#{thesis.id}.pdf")   
  end
end
