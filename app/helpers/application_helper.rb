module ApplicationHelper
  def errors_for(object, desired_name=object.class.name.downcase)
    if object.errors.any?
      content_tag(:div, class: "panel panel-danger") do
        concat(content_tag(:div, class: "panel-heading") do
          concat(content_tag(:h4, class: "panel-title") do
            concat "#{pluralize(object.errors.count, "error")} prohibited this #{desired_name} from being saved:"
              end)
            end)
            concat(content_tag(:div, class: "panel-body") do
              concat(content_tag(:ul) do
                object.errors.full_messages.each do |msg|
                  concat content_tag(:li, msg)
                  end
                end)
            end)
        end
    end
  end
  
  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end

end
