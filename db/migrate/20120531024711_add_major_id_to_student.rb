class AddMajorIdToStudent < ActiveRecord::Migration
  def change
    add_column :students, :major_id, :integer
  end
end
