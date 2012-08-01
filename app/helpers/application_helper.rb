module ApplicationHelper
  def flash_class(level)
    case level
    when :notice then "info"
    when :error then "error"
    when :alert then "warning"
    end
  end

  def menu_link_to(title, url, html_options={})
    unless url.is_a?(Hash) and url[:controller]
      raise "URL parameter has to be HASH and :controller has to be specified"
    end
    if url[:controller] == controller.controller_path
      html_options[:class] = "current"
    end
    link_to(title, url, html_options)
  end
end


