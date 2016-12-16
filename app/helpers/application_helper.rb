module ApplicationHelper
  def page_title
    title = "Tohno Labo"
    title = @page_title + "-" + title if @page_title
    title
  end
end
