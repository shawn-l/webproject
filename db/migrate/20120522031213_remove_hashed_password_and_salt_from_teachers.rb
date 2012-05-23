class RemoveHashedPasswordAndSaltFromTeachers < ActiveRecord::Migration
  def up
    remove_column :teachers, :hashed_password
    remove_column :teachers, :salt
  end

  def down
    add_column :teachers, :hashed_password, :string
    add_column :teachers, :salt, :string
  end
end
