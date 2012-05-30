class PasswordsController < Devise::PasswordsController 
  layout "login"
  def update
    self.resource = resource_class.reset_password_by_token(resource_params)

    if resource.errors.empty?
      flash_message = resource.active_for_authentication? ? :updated : :updated_not_active
      set_flash_message(:notice, flash_message) if is_navigational_format?
      redirect_to root_path
      else
        respond_with resource
      end
  end
end
