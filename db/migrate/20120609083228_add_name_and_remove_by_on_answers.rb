class AddNameAndRemoveByOnAnswers < ActiveRecord::Migration
  def up
    remove_column :answers, :by
    add_column :answers, :name, :string
  end

  def down
    remove_column :answers, :name
    add_column :answers, :by, :string
  end
end
