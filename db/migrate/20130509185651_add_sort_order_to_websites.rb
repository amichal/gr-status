class AddSortOrderToWebsites < ActiveRecord::Migration
  def change
    add_column :web_sites, :sort_order, :integer
  end
end
