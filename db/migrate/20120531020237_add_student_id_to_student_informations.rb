class AddStudentIdToStudentInformations < ActiveRecord::Migration
  def change
    add_column :student_informations, :student_id, :integer
  end
end
