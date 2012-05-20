class RemoveSexFromStudents < ActiveRecord::Migration
  def up
    remove_column :students, :sex
    add_column :students, :sex, :string
  end

  def down
    add_column :students, :sex, :binary
  end
end
