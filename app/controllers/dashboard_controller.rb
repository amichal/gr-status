class DashboardController < ApplicationController
  require 'open-uri'
  require 'htmlentities'
  def find_status(website)
  	@status_data['services'].detect do |service|
  		service['service_description'] == website.url or service['service_description'] == website.host
  	end
  end
  helper_method :find_status
  def index
  		data_file = open("https://nagios.greenriver.com/cgi-bin/nagios3/status-json.cgi",
  		:http_basic_authentication=>['amichal', 'B#atch18'])
  		@status_data = JSON.parse(data_file.read)
  		@status_data['services'].each do |key|
  			logger.info key.inspect
  		end
  end
end
