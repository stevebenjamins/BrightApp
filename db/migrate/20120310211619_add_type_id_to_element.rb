class AddTypeIdToElement < ActiveRecord::Migration
  def change
    add_column :elements, :type_id, :integer

  end
end
