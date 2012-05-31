class PasswordsController < Devise::PasswordsController 
  layout "login"
  def update
    self.resource = resource_class.reset_password_by_token(resource_params)

    if resource.errors.empty?
      redirect_to root_path
      else
        respond_with resource
      end
  end
end
