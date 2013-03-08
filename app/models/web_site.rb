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

  def response_time_ms_1_minute_interval
    prng = Random.new
    start = prng.rand(15...250)
    last = start
    (0..60).map do
       if prng.rand(100) > 95
         nil
       else
         last += prng.rand(-10...10)
       end  
    end
  end 
end
