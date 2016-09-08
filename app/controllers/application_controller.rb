class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_filterを設定
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #strong parametersを設定し、usernameを許可
    # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
			user_params.permit(:username, :password, :password_confirmation, :role, :classroom)
		end
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
		 	user_params.permit(:username, :password, :remember_me)
		end
  end 
	
	def redirect_unless_admin
    if current_user.role == 'member'
     redirect_to root_path 
		end
	end
end
