class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :role, :string
    add_column :users, :mobile_number, :string
  end
end
