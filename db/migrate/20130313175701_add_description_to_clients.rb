class AddDescriptionToClients < ActiveRecord::Migration
  def up
  	change_table :clients do |t|
  		t.string :description, :harvest_client_id
  	end
  end

  def down
  	change_table :clients do |t|
  		t.remove :description, :harvest_client_id
  	end
  end
end
