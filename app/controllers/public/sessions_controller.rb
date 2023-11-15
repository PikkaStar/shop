# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  before_action :customer_state,only: [:create]


    def after_sign_in_path_for(resource)
    customer_path(current_customer)
    end


  private
  def customer_state
    customer = Customer.find_by(email: params[:customer][:email])
    return if customer.nil?
    return unless customer.valid_password?(params[:customer][:password])
    unless customer.is_active == true
      redirect_to new_customer_registration_path
    end
  end




end
