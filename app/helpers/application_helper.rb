module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Full-Stack Ruby on Rails web Developer'
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end
end
