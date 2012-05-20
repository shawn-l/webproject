class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :id
      t.string :hashed_password
      t.string :salt
      t.string :name
      t.string :majored
      t.string :grade
      t.string :email
      t.binary :sex
      t.boolean :state

      t.timestamps
    end
  end
end
