class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.integer :item
      t.string :title
      t.integer :teacher_id
      t.integer :student_id
      t.text :summary
      t.text :content

      t.timestamps
    end
  end
end
