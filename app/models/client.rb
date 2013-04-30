class Client < ActiveRecord::Base
  attr_accessible :logo_url, :name, :web_sites_attributes, :description

  validates :name, :presence => true, :uniqueness=>true

  has_many :web_sites, :dependent=>:destroy, :inverse_of=>:client

  accepts_nested_attributes_for :web_sites, 
    :reject_if => proc { |attributes| attributes['url'].blank? }
end
