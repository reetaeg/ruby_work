module ApplicationHelper
  
  def bootstrap_class_for(flash_type)
    case flash_type
    when "success"
     "alert-success" # 초록색
    when "error"
      "alert-danger" # 빨간색
    when "alert"
      "alert-warning" # 노랑색
    when "notice"
      "alert-info" # 파랑색
    else
      flash_type.to_s
    end
  end
  
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction ==  "asc" ) ? "desc" : "asc" 
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
  def utf8(str)
     str.blank? ? "":str.force_encoding("utf-8")
  end 
end
