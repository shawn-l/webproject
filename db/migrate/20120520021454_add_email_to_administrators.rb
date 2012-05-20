class AddEmailToAdministrators < ActiveRecord::Migration
  def change
    add_column :administrators, :email, :string
  end
end
