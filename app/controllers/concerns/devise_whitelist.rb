module DeviseWhitelist
	extend ActiveSupport::Concern

	included do
		before_action :configure_permitted_parameters, if: :devise_controller?
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
		# devise_parameter_sanitizer.permit(:sing_up, keys: [:name])
		# devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end

end