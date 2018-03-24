module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Full-Stack Ruby on Rails web Developer'
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: 'source-greeting')
    end
  end
end
