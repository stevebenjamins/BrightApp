class AddWebsiteNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :website_name, :string

  end
end
