class WebSite < ActiveRecord::Base
  attr_accessible :monitored, :url, :client_id, :ga_profile_id
  attr_accessible :monitored, :url, :client_id, :ga_profile_id, :as=>:admin

  validates :url, :presence => true, :uniqueness=>true

  belongs_to :client, :inverse_of=>:web_sites

  def host
    URI.parse(self.url).host
  end

  def path
    URI.parse(self.url).path
  end

  def requests_per_minute
    prng = Random.new
    start = prng.rand(0...600)
    last = start
    d = (0..15).map do
       if prng.rand(100) > 98
         nil
       else
         last += prng.rand(-30...30)
       end  
    end
    d << {
        :y => d.last,
        :dataLabels => {
          :enabled =>  true,
          :align => 'left',
          :crop => 'false',
          :x => 3,
          :verticalAlign => 'middle'
        }
      }
  end 
end
