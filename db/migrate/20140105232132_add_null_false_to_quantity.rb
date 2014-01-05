class AddNullFalseToQuantity < ActiveRecord::Migration
  def change
    change_column :inventories, :quantity, :string, null: false
  end
end
