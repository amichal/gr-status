OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_apps, domain: 'greenriver.org'
  provider :google
end