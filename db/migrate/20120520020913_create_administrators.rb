class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :adminId
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
