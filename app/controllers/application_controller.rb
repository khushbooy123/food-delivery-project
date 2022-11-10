class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    # def after_sign_in_path_for(resource)
    #   if current_user.type == 'Customer'
    #     customer_index_path
    #   elsif current_user.type == 'Owner'
    #     owner_index_path
    #   else  
    #     root_path
    #   end
    # end
    def after_sign_in_path_for(resource)
      if resource.is_admin?
        redirect_to admin_path
      else
        redirect_to user_path
      end
    end
   
   def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
        user.permit(:email, :password, :password_confirmation, :type)
    end
  end
  

end
