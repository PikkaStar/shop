class CustomersController < ApplicationController
  def show
    @customer = current_user
  end

  def edit
  end

  def check
  end
end
