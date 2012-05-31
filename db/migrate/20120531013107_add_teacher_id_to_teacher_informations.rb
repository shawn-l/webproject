class AddTeacherIdToTeacherInformations < ActiveRecord::Migration
  def change
    add_column :teacher_informations, :teacher_id, :integer
  end
end
