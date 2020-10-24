Clearance.configure do |config|
  config.mailer_sender = ENV['DEFAULT_EMAIL_ADDRESS']
  config.rotate_csrf_on_sign_in = true
  config.routes = false
end
