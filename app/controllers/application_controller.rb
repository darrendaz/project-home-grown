class ApplicationController < ActionController::Base
  private
  def after_sign_in_path_for(resource)
    user_path(resource) || welcome_path
  end
  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
