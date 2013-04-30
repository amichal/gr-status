class WebSite < ActiveRecord::Base
  attr_accessible :monitored, :url, :client_id, :ga_profile_id, :git_path

  validates :url, :presence => true, :uniqueness=>true
  validates :ga_profile_id, :numericality => {:only_integer => :true}
  belongs_to :client, :inverse_of=>:web_sites

  def host
    URI.parse(self.url).host
  end

  def path
    URI.parse(self.url).path
  end
end
