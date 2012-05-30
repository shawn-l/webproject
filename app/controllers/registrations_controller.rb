class RegistrationsController < Devise::RegistrationsController 
  layout "login"
  def create
    build_resource
    resource.state = false
    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        respond_with resource, :location => after_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end
  protected
  def after_sign_up_path_for(resource)
    home_guest_path
  end

end
