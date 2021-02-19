class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_status, :boolean, default: true
    add_column :users, :name, :string
    add_index :users, :name, unique: true
  end
end
