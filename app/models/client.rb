class Client < ActiveRecord::Base
  attr_accessible :logo_url, :name, :as=>:admin
  attr_accessible :logo_url, :name, :web_sites_attributes

  validates :name, :presence => true, :uniqueness=>true

  has_many :web_sites, :dependent=>:destroy, :inverse_of=>:client

  accepts_nested_attributes_for :web_sites

  def hours
  	return Random.new.rand(10..40)
  end
end
