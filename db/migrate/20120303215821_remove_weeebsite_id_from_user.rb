class RemoveWeeebsiteIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :website_id, :integer
  end
end
