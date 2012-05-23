class ChangeStuIdInStudents < ActiveRecord::Migration
  def up
    remove_column :students, :stuId
    add_column :students, :stuId, :string 
  end

  def down
    remove_column :students, :stuId
    add_column :students, :stuId, :integer
  end
end
