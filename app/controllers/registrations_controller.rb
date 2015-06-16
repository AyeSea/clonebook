class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :gender, :password, 
			                           :password_confirmation, :birthday)
	end

	def account_update_params
		params.require(:user).permit(:first_name, :last_name, :email, :email_confirmatin, :gender, :password, 
			                           :password_confirmation, :current_password, :birthday)
	end
end