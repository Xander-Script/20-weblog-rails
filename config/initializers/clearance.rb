# frozen_string_literal: true

Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = 'reply@weblog.localhost'
  config.rotate_csrf_on_sign_in = true
end
