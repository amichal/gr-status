class WebSite < ActiveRecord::Base
  attr_accessible :monitored, :url, :client_id, :web_sites
  attr_accessible :monitored, :url, :client_id, :as=>:admin

  validates :url, :presence => true, :uniqueness=>true

  belongs_to :client, :inverse_of=>:web_sites

  def host
    URI.parse(self.url).host
  end
  def path
    URI.parse(self.url).path
  end
end
