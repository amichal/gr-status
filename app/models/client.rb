class Client < ActiveRecord::Base
  attr_accessible :logo_url, :name

  validates :name, :presence => true, :uniqueness=>true

  has_many :web_sites, :dependent=>:destroy, :inverse_of=>:client
end
