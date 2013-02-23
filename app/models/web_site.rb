class WebSite < ActiveRecord::Base
  attr_accessible :monitored, :url, :client_id
  attr_accessible :monitored, :url, :client_id, :as=>:admin

  validates :url, :presence => true, :uniqueness=>true

  belongs_to :client, :inverse_of=>:web_sites
end
