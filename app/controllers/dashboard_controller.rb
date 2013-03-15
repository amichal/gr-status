class DashboardController < ApplicationController
  require 'open-uri'
  require 'htmlentities'
  def find_status(website)
  	@status_data['services'].detect do |service|
  		service['service_description'] == website.url or service['service_description'] == website.host
  	end
  end
  helper_method :find_status

  def find_response_time_data(website)
    @performance_data.detect do |data|
      data.first == website.url or data.first == website.host
    end
  end
  helper_method :find_response_time_data

  def index
    options = {:http_basic_authentication=>['amichal', 'B#atch18']}
		data_file = open("https://nagios.greenriver.com/cgi-bin/nagios3/status-json.cgi",
		options)
		@status_data = JSON.parse(data_file.read)
		@status_data['services'].each do |key|
			logger.info key.inspect
		end
    @performance_data = {}
    open("https://nagios.greenriver.com/perfdata.log", options).each do |line|
      fields = line.force_encoding('UTF-8').split('||')
      @performance_data[fields[2]] = {:time => fields[0],
      :data => fields[4]}
    end
  end
end
