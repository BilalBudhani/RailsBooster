class SessionsController < Clearance::SessionsController
  def index
    render inertia: "sessions/Index"
  end

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        redirect_back_or url_after_create
      else
        redirect_to new_session_path, alert: status.failure_message
      end
    end
  end
end