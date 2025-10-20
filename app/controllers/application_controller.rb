class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  inertia_share flash: -> { flash.to_h }

  inertia_share if: :authenticated? do
    {
      user: Current.user&.as_json(only: [:first_name, :last_name, :time_zone]),
    }
  end
end
