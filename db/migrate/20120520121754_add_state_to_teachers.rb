class AddStateToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :state, :boolean
  end
end
