class CreatePageElements < ActiveRecord::Migration
  def change
    create_table :page_elements do |t|
      t.integer :page_id
      t.integer :element_id
      t.string :element_type

      t.timestamps
    end
  end
end
