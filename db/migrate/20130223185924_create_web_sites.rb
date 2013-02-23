class CreateWebSites < ActiveRecord::Migration
  def change
    create_table :web_sites do |t|
      t.string :url
      t.references :client
      t.boolean :monitored
      t.timestamps
    end
    add_index :web_sites, :url, :unique =>true
  end
end
