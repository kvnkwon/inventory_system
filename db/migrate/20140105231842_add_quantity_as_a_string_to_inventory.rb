class AddQuantityAsAStringToInventory < ActiveRecord::Migration
  def up
    remove_column :inventories, :quantity
    add_column :inventories, :quantity, :string  
  end
  
  def down
    remove_column :inventories, :quantity
    add_column :inventories, :quantity, :integer
  end
end
