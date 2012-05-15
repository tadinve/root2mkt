class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_access_log(user)
    access = AccessReport.new
    access.email = user.email
    if user.authentications.first and user.authentications.first.provider
      access.provider = user.authentications.first.provider
    else
      access.provider = "Devise Direct Login"
    end
    access.access_at = user.current_sign_in_at
    access.access_ip = user.current_sign_in_ip
    access.save
  end

  private
    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(resource_or_scope)
      root_path
    end
    def after_sign_in_path_for(resource_or_scope)
    	user_access_log(current_user)
  		root_path
	  end
end
