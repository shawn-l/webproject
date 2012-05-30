class RemoveItemFormTheses < ActiveRecord::Migration
  def up
    remove_column :theses, :item
  end

  def down
    add_column :theses, :item, :integer
  end
end
