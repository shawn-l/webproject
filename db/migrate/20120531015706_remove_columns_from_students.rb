class RemoveColumnsFromStudents < ActiveRecord::Migration
  def up
    remove_column :students, :hashed_password
    remove_column :students, :salt
    remove_column :students, :name
    remove_column :students, :majored
    remove_column :students, :grade
    remove_column :students, :sex
  end

  def down
  end
end
