#encoding: utf-8
class SessionsController < Devise::SessionsController
 layout "login"
 before_filter :is_active, :only => :create
 

 
 private
 def is_active
  resource_class = build_resource
  if resource_class.is_a?(Teacher)
    user = Teacher.find_by_tchId(params[:teacher][:login])
  elsif resource_class.is_a?(Student)
    user = Student.find_by_stuId(params[:student][:login])
  else
    return
  end
  if user.nil?
    return
  end
  unless user.state? 
    redirect_to root_path, :alert => "你的帐号还未激活"
  end
 end


end
