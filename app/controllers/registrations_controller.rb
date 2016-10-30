class RegistrationsController < Devise::RegistrationsController





protected

  def after_sign_out_path_for(resource_or_scope)
    user_session_path
  end

  def after_sign_up_path_for(resource)
    user_session_path
  end

  def after_inactive_sign_up_path_for(resource)
    user_session_path
  end



end

