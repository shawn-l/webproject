class CreateTeacherInformations < ActiveRecord::Migration
  def change
    create_table :teacher_informations do |t|
      t.string :name
      t.string :department
      t.string :sex

      t.timestamps
    end
  end
end
