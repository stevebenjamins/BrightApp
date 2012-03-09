class RemoveWebsiteNameFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :website_name
    remove_column :users, :domain
  end
end
