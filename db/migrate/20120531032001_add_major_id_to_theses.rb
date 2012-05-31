class AddMajorIdToTheses < ActiveRecord::Migration
  def change
    remove_column :theses, :major
    add_column :theses, :major_id, :integer
  end
end
