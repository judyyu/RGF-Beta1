class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_profile_path
  end
  
  def sign_out  
	Devise.sign_out_all_scopes ? sign_out : sign_out(resource)
  end

end
