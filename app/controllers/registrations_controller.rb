# frozen_string_literal: true

class RegistrationsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_registration_url, alert: "Try again later." }
  around_action :set_user_time_zones, only: %i[ new create ], if: -> { authenticated? && Current.user.time_zone.present? }

  def new
    render inertia: 'Registrations/New', props: {
      time_zones: time_zones
    }
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :time_zone)
  end

  def time_zones
    ActiveSupport::TimeZone.all.map { it.name }.sort
  end

  def set_user_time_zones
    Time.use_zone(Current.user.time_zone) { yield }
  end
end
