class CreateWebSites < ActiveRecord::Migration
  def change
    create_table :web_sites do |t|
      t.string :url, :null=>false 
      t.references :client, :null=>false 
      t.boolean :monitored
      t.timestamps
    end
    add_index :web_sites, :url, :unique =>true
  end
end
