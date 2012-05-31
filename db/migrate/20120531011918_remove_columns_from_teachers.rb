class RemoveColumnsFromTeachers < ActiveRecord::Migration
  def up
    remove_column :teachers, :name
    remove_column :teachers, :department
    remove_column :teachers, :sex
  end

  def down
    add_column :teachers, :sex, :string
    add_column :teachers, :department, :string
    add_column :teachers, :name, :string
  end
end
