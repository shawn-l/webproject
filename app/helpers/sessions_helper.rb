module SessionsHelper
  def show_links_for_user(resource)
    if !resource.is_a?(Administrator)
      render :partial => "shared/links"
    end
  end
end
