class ApplicationController < ActionController::Base
  inertia_share do
    {
      errors: Current.errors || [],
      flash: {
        success: flash.notice,
        alert: flash.alert
      },
      user: user_signed_in? ? current_user.as_json(only: %w{ email }) : nil
    }
  end
end
