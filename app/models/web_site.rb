class WebSite < ActiveRecord::Base
  attr_accessible :monitored, :url

  belongs_to :client, :inverse_of=>:web_sites
end
