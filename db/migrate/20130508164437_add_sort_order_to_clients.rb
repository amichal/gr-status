class AddSortOrderToClients < ActiveRecord::Migration
  def change
    add_column :clients, :sort_order, :integer
  end
end
