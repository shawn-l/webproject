class ChangeIdToStuId < ActiveRecord::Migration
  def up
    rename_column :students, :id, :stuId
  end

  def down
    rename_column :students, :stuId, :id
  end
end
