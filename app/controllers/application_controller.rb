class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  	def add_user_to_access_report(user)
			access = AccessReport.new
			access.email = user.email
			omniauth = request.env["omniauth.auth"]
			if omniauth
				access.provider =  omniauth['provider']
			else
				access.provider = "Devise Direct Login"
			end
			access.access_at = user.current_sign_in_at
			access.access_ip = user.current_sign_in_ip
			access.save
	  end
    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(resource_or_scope)
      root_path
    end
    def after_sign_in_path_for(resource_or_scope)
  		add_user_to_access_report(current_user)
  		root_path
  # 	home_my_list_path
   end

end
