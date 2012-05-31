class CreateStudentInformations < ActiveRecord::Migration
  def change
    create_table :student_informations do |t|
      t.string :name
      t.string :major
      t.string :grade
      t.string :sex

      t.timestamps
    end
  end
end
