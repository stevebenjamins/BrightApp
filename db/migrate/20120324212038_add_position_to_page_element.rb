class AddPositionToPageElement < ActiveRecord::Migration
  def change
    add_column :page_elements, :position, :integer

  end
end
