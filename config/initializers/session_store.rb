# Be sure to restart your server when you modify this file.

GrStatus::Application.config.session_store :cookie_store, 
  :key => '_gr-status_session',
  :secret => '86469ab985723e3cb19d7445eff0decb573b8406b71039a33699d6c023513d429a2eb7393c30ecdc3f39c7da399bf8566a3d4373dc14aac60337fa4f4978b75f'


# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# GrStatus::Application.config.session_store :active_record_store
