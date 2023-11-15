# frozen_string_literal: true

class Public::RegistrationsController < Devise::RegistrationsController

   before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]



  def after_sign_up_path_for(resource)
     customer_path(current_customer)
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name,:first_name,:last_name_kana,:first_name_kana,:postal_code,:address,:phone_number,:is_active])
  end

end
