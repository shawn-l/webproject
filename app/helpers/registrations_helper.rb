#encoding: utf-8
module RegistrationsHelper
  def show_user_label(resource, f)
   if resource.is_a?(Teacher)
     content_tag :th do  
         f.label "老师Id" 
     end  
   else 
     content_tag :th do
         f.label "学生Id" 
     end
   end
  end

  def show_user_input(resource, f)
    if resource.is_a?(Teacher)
      content_tag :th, :class => "th" do
        f.text_field :tchId
      end
    else
      content_tag :th, :class => "th" do
        f.text_field :stuId
      end
    end
  end

  def show_return_link_to_user(resource)
    if !current_administrator
      link_to "返回", new_session_path(resource.class)
    end 
  end
end
