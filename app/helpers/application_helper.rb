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
    return nil unless @status_data['services']
  	@status_data['services'].detect do |service|
  		service['service_description'] == website.url or service['service_description'] == website.host
  	end
  end

	def list_deployments(website)
		deployment_list = []
		get_git_deployments(website.git_path).each do |deployment|
			if deployment['ref'].scan(/production/) != []
				deployment_list.append(deployment['ref'].scan(/\d{2,}/).first)
			end
		end
    return [] if deployment_list.empty? 
    return deployment_list[-length .. -1].sort.reverse
	end

  def get_git_deployments(repo_path)
  	client = Octokit::Client.new(APP_CONFIG['github'].symbolize_keys)
  	client.refs(repo_path, 'tags')
  rescue
    []
  end

	def nagios_options
		options = APP_CONFIG['nagios'].symbolize_keys
	end

	def retrieve_status_data
		data_file = open("https://nagios.greenriver.com/cgi-bin/nagios3/status-json.cgi",
		nagios_options)
		return JSON.parse(data_file.read)
	rescue
    {}
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
  rescue
    {}
	end

	def get_google_analytics_data(website)
		return nil unless website.ga_profile_id
		Rails.cache.fetch("#{website.ga_profile_id}_data", :expires_in => 1.hour) do
			ga = Gattica.new(
				APP_CONFIG['google_analytics'].symbolize_keys.merge(
				:profile_id => website.ga_profile_id
				))
			this_account = ga.accounts.detect do |this_account|
				website.ga_profile_id.to_i == this_account.profile_id
			end
			return nil unless this_account
			ga.profile_id = this_account.profile_id
			data = ga.get({ 
	    :start_date   => 3.months.ago.to_s.scan(/\d+-\d+-\d+/)[0],
	    :end_date     => 1.day.ago.to_s.scan(/\d+-\d+-\d+/)[0],
	    :dimensions   => ['date'],
	    :metrics      => ['visitors', 'pageviews'],
			})
		end
	rescue
    nil
  end

	def get_visitors_by_day(website)
		return nil unless website.ga_profile_id.present?
		points = []
		
    if data = get_google_analytics_data(website)
      get_google_analytics_data(website).points.each do |data_point|
    		date = Time.parse(data_point.dimensions.first[:date]).to_f*1000
    		visitors = data_point.metrics[0][:visitors]
    		points.push([date, visitors])
  		end
  	end
    points
	end

	def get_pageviews_by_day(website)
		return nil unless website.ga_profile_id.present?
		points = []
    if data = get_google_analytics_data(website)
  		data.points.each do |data_point|
    		date = Time.parse(data_point.dimensions.first[:date]).to_f*1000
    		pageviews = data_point.metrics[1][:pageviews]
    		points.push([date, pageviews])
  		end
    end
		points
	end

end
