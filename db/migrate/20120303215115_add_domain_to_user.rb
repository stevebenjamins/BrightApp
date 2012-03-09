class AddDomainToUser < ActiveRecord::Migration
  def change
    add_column :users, :domain, :string

  end
end
