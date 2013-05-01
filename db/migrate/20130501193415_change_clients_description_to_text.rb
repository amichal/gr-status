class ChangeClientsDescriptionToText < ActiveRecord::Migration
  def change
    change_column :clients, :description, :text, :limit => nil
  end
end
