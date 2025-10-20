# frozen_string_literal: true

class RegistrationsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_registration_url, alert: "Try again later." }

  def new
    render inertia: 'Registrations/New'
  end

  def create
    user = User.new(user_params)

    if user.save
      start_new_session_for user
      redirect_to after_authentication_url, success: "Account created successfully"
    else
      redirect_to new_registration_path, alert: "There was an error creating your account", inertia: {errors: user.errors }
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
