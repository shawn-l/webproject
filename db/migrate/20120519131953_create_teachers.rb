class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :tchId
      t.string :hashed_password
      t.string :salt
      t.string :name
      t.string :department
      t.string :email
      t.string :sex

      t.timestamps
    end
  end
end
