class ApplicationController < ActionController::Base
  after_action :set_csrf_cookie

  private
  # Inertia CSRF Token Config
  def set_csrf_cookie
    cookies['XSRF-TOKEN'] = form_authenticity_token
  end
end
