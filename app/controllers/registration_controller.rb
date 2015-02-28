class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :age, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :age, :email, :city_id, :password, :password_confirmation, :current_password)
  end
end
