module ApplicationHelper
   def show_alert_message
    if alert
      content_tag :div, alert, :class=>"error"
    end
   end
  
 

end
