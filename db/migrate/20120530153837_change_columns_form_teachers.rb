class ChangeColumnsFormTeachers < ActiveRecord::Migration
  def up
    remove_column :teachers, :name
    remove_column :teachers, :department
    remove_column :teachers, :sex
    add_column :teachers, :sex, :string
    add_column :teachers, :department, :string
    add_column :teachers, :name, :string
  end

  def down
  end
end
