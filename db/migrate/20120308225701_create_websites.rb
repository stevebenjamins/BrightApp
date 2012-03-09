class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.integer :user_id
      t.string :name
      t.string :domain

      t.timestamps
    end
  end
end
