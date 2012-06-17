class ChangeAnswersTable < ActiveRecord::Migration
  def up 
    remove_column :answers, :type
    add_column :answers, :by, :string
  end

  def down
    remove_column :answers, :by
    add_column :answers, :type, :string
  end
end
