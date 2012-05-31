class AddMajorIdToStudentInformation < ActiveRecord::Migration
  def change
    remove_column :student_informations, :major
    add_column :student_informations, :major_id, :integer
  end
end
