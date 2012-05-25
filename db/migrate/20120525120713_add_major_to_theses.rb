class AddMajorToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :major, :string
  end
end
