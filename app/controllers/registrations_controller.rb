class RegistrationsController < Devise::RegistrationsController 
  layout :determine_layout 
  def create
    build_resource
    resource.send("create_#{resource.class.to_s.downcase}_information") 
    resource.state = false
    if resource.save
      respond_with resource, :location => after_sign_up_path_for(resource)
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  protected
  def after_sign_up_path_for(resource)
    home_guest_path
  end

  def determine_layout
    if current_administrator
      "application"
    else
      "login"
    end
  end

end
