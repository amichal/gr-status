class AddGitPathToWebsite < ActiveRecord::Migration
  def change
  	add_column :web_sites, :git_path, :string
  end
end
