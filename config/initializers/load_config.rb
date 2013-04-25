APP_CONFIG = {
  'github' => {
    'login' => ENV['GITHUB_LOGIN'].to_s,
    'password' => ENV['GITHUB_PASSWORD'].to_s
  },
  'nagios' => {
    'http_basic_authentication' => ENV['NAGIOS_BASIC_AUTH'].to_s.split(':')
  },
  'google_analytics' => {
    'email' => ENV['GOOGLE_ANALYTICS_EMAIL'].to_s,
    'password' => ENV['GOOGLE_ANALYTICS_PASSWORD'].to_s
  }  
}
begin 
   config = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
   APP_CONFIG.deep_merge! config
rescue  
end
Rails.logger.warn APP_CONFIG
