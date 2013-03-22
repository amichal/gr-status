class AddGoogleIdToWebsite < ActiveRecord::Migration
  def change
  	add_column :web_sites, :ga_profile_id, :string
  	add_column :web_sites, :ga_metrics, :string
  end
end
