GrStatus::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb
  
  # Code is not reloaded between requests
  config.cache_classes = true


  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = true
 
  # Serve static assets
  config.serve_static_assets = true
  config.static_cache_control = "public, max-age=86400"



  # use memcache for Rails.cache
  config.cache_store = :dalli_store
  
  # and for action_dispatch cache
  config.action_controller.perform_caching = true
  config.action_dispatch.rack_cache = {
    :metastore    => Dalli::Client.new,
    :entitystore  => 'file:tmp/cache/rack/body',
    :allow_reload => false
  }

  # compress JavaScripts and CSS
  config.assets.compress = true

  # Fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs
  config.assets.digest = true

  config.log_tags = [ :uuid ]

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5
end
