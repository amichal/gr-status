require 'open-uri'
require 'htmlentities'

module ApplicationHelper
	def find_performance_data(website, attribute)
		@performance_data ||= retrieve_performance_data
    stuff = @performance_data.detect do |data|
      data.first == website.url or data.first == website.host
    end
    if stuff
      stuff.last[attribute]
    end
	end

	def find_status(website)
    @status_data ||= retrieve_status_data
  	@status_data['services'].detect do |service|
  		service['service_description'] == website.url or service['service_description'] == website.host
  	end
  end

	def nagios_options
		options = {:http_basic_authentication=>['amichal', 'B#atch18']}
	end

	def retrieve_status_data
		data_file = open("https://nagios.greenriver.com/cgi-bin/nagios3/status-json.cgi",
		nagios_options)
		return JSON.parse(data_file.read)
	end

	def retrieve_performance_data
		Rails.cache.fetch('performance_data', :expires_in => 1.minute) do
			starting_at = 3.hours.ago
			performance_data = Hash.new
	    open("https://nagios.greenriver.com/perfdata.log", nagios_options).each do |line|
	      fields = line.force_encoding('UTF-8').split('||')
	      website = fields[2]
	      time = Time.at(fields[0].to_i)
	      if time >= starting_at
		      fields[4].scan(/([^ '=]+)=([-0-9.]*)(|s|us|ms|%|B|KB|TB|MB|GB);/) do |label, value, units|
		        performance_data[website] ||= Hash.new
		        performance_data[website][label] ||= Array.new
		        performance_data[website][label].push([time.to_f*1000, value.to_f])
		      end
		    end
	    end
	    performance_data
	  end
	end

end
